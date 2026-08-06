import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

import 'package:desafio_orbytis/core/services/camera_service.dart';
import 'package:desafio_orbytis/core/services/location_service.dart';

class InspectionFormPage extends StatefulWidget {
  // Neste exemplo, recebemos o ID da OS, mas mockamos os dados na tela.
  final String serviceOrderId;

  const InspectionFormPage({super.key, required this.serviceOrderId});

  @override
  State<InspectionFormPage> createState() => _InspectionFormPageState();
}

class _InspectionFormPageState extends State<InspectionFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _observationController = TextEditingController();

  // Instâncias dos serviços (neste ponto, poderíamos usar injeção de dependência)
  final _cameraService = CameraService();
  final _locationService = LocationService();

  // Estados locais do formulário
  XFile? _capturedImage;
  Position? _currentPosition;
  bool _isLoadingLocation = false;
  bool _isSaving = false;

  @override
  void dispose() {
    _observationController.dispose();
    super.dispose();
  }

  // Ação de capturar imagem
  void _onTakePicture() async {
    try {
      final image = await _cameraService.takePicture();
      if (image != null) {
        setState(() {
          _capturedImage = image;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao capturar foto: $e'), backgroundColor: Colors.red),
      );
    }
  }

  // Ação de obter GPS
  void _onGetLocation() async {
    setState(() => _isLoadingLocation = true);
    try {
      final position = await _locationService.getCurrentLocation();
      setState(() {
        _currentPosition = position;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao obter GPS: $e'), backgroundColor: Colors.red),
      );
    } finally {
      setState(() => _isLoadingLocation = false);
    }
  }

  // Ação de salvar o formulário
  void _onSaveInspection() async {
    if (_formKey.currentState!.validate()) {
      if (_capturedImage == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, capture uma foto.'), backgroundColor: Colors.orange),
        );
        return;
      }

      if (_currentPosition == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, obtenha a localização GPS.'), backgroundColor: Colors.orange),
        );
        return;
      }

      setState(() => _isSaving = true);

      // Simulação de delay até termos banco local ou API
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        setState(() => _isSaving = false);
        // Exemplo do que salvaríamos futuramente:
        final summary =
            "ID OS: ${widget.serviceOrderId}\nObs:${_observationController.text}\nFoto: ${_capturedImage!.name}\nLat:${_currentPosition!.latitude}";
        
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Inspeção Simulada'),
            content: Text(summary),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('OK'))
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Mock de dados da OS para exibir no cabeçalho
    const mockOSClientName = "Supermercado Exemplo";
    const mockOSAddress = "Av. Principal, 123 - Centro";

    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Inspeção (OS ${widget.serviceOrderId})'),
      ),
      body: _isSaving
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cabeçalho com dados da OS
                    Card(
                      color: Colors.blue[50],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(mockOSClientName,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 4),
                            Text(mockOSAddress, style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Campo de Observação
                    TextFormField(
                      controller: _observationController,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'Observações de Campo',
                        alignLabelWithHint: true,
                        hintText: 'Descreva o estado do equipamento, problemas encontrados...',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Por favor, descreva suas observações.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // Seção de Foto
                    Text('Foto do Local/Equipamento', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 8),
                    _capturedImage == null
                        ? PlaceholderImageWidget(onTap: _onTakePicture)
                        : ImagePreviewWidget(file: File(_capturedImage!.path), onRemove: () => setState(() => _capturedImage = null)),
                    const SizedBox(height: 24),

                    // Seção de GPS
                    Text('Coordenadas de GPS', style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 8),
                    _currentPosition == null
                        ? NoLocationWidget(onGetLocation: _onGetLocation, isLoading: _isLoadingLocation)
                        : LocationDisplayWidget(position: _currentPosition!, onRetry: _onGetLocation, isLoading: _isLoadingLocation),

                    const SizedBox(height: 40),

                    // Botão Finalizar
                    ElevatedButton.icon(
                      onPressed: _onSaveInspection,
                      icon: const Icon(Icons.cloud_upload_outlined),
                      label: const Text('SALVAR INSPEÇÃO', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

// Widgets auxiliares para manter o build clean

class PlaceholderImageWidget extends StatelessWidget {
  final VoidCallback onTap;
  const PlaceholderImageWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[400]!),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined, size: 40, color: Colors.grey),
            SizedBox(height: 8),
            Text('Toque para tirar foto', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class ImagePreviewWidget extends StatelessWidget {
  final File file;
  final VoidCallback onRemove;
  const ImagePreviewWidget({super.key, required this.file, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: FileImage(file), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: onRemove,
            ),
          ),
        )
      ],
    );
  }
}

class NoLocationWidget extends StatelessWidget {
  final VoidCallback onGetLocation;
  final bool isLoading;
  const NoLocationWidget({super.key, required this.onGetLocation, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Icon(Icons.location_disabled, color: Colors.orange, size: 30),
          const SizedBox(width: 12),
          const Expanded(child: Text('GPS não capturado.', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w500))),
          isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(onPressed: onGetLocation, child: const Text('Obter')),
        ],
      ),
    );
  }
}

class LocationDisplayWidget extends StatelessWidget {
  final Position position;
  final VoidCallback onRetry;
  final bool isLoading;
  const LocationDisplayWidget({super.key, required this.position, required this.onRetry, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Icon(Icons.location_on, color: Colors.blue, size: 30),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lat: ${position.latitude.toStringAsFixed(6)}', style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('Long: ${position.longitude.toStringAsFixed(6)}'),
              ],
            ),
          ),
          isLoading
              ? const CircularProgressIndicator()
              : IconButton(onPressed: onRetry, icon: const Icon(Icons.refresh, color: Colors.blue)),
        ],
      ),
        );
  }
}