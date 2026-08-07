import 'package:isar/isar.dart';

part 'inspection_model.g.dart'; // Arquivo que será gerado

@collection
class InspectionModel {
  Id id = Isar.autoIncrement;

  @Index()
  String? workOrderId; // Referência à OS inspecionada

  String? observation;
  String? condition; 
  
  String? photoPath; // Caminho local da foto no dispositivo antes do envio

  double? latitude;
  double? longitude;
  DateTime? capturedAt;

  // Controle offline-first
  @Index()
  String syncStatus = 'draft'; // status da fila: draft, pending, synced, failed
  
  String? syncErrorMessage; // Armazena o motivo da falha para feedback ao usuário
}