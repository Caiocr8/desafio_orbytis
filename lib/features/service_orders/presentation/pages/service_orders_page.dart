import 'package:desafio_orbytis/features/service_orders/domain/entities/service_order.dart';
import 'package:flutter/material.dart';

class ServiceOrdersPage extends StatefulWidget {
  const ServiceOrdersPage({super.key});

  @override
  State<ServiceOrdersPage> createState() => _ServiceOrdersPageState();
}

class _ServiceOrdersPageState extends State<ServiceOrdersPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<ServiceOrder> _allOrders = const [
    ServiceOrder(
      id: 'OS-1001',
      title: 'Manutenção de Ar Condicionado',
      description:
          'Verificar vazamento na unidade condensadora externa e substituir filtro de ar.',
      clientName: 'Supermercado Exemplo',
      address: 'Av. Epitácio Pessoa, 1200 - Bairro dos Estados',
      status: 'pending',
    ),
    ServiceOrder(
      id: 'OS-1002',
      title: 'Inspeção Elétrica Preventiva',
      description:
          'Revisão geral do quadro de distribuição principal e teste de disjuntores.',
      clientName: 'Hospital São Lucas',
      address: 'Rua João Machado, 450 - Centro',
      status: 'completed',
    ),
    ServiceOrder(
      id: 'OS-1003',
      title: 'Vistoria de Gerador de Energia',
      description:
          'Checar nível de óleo, bateria, cabos e horas de operação acumuladas.',
      clientName: 'Centro Comercial Tambaú',
      address: 'Av. Almirante Tamandaré, 89 - Tambaú',
      status: 'syncing',
    ),
  ];

  List<ServiceOrder> _filteredOrders = [];

  @override
  void initState() {
    super.initState();
    _filteredOrders = _allOrders;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredOrders = _allOrders.where((order) {
        return order.id.toLowerCase().contains(query) ||
            order.title.toLowerCase().contains(query) ||
            order.clientName.toLowerCase().contains(query) ||
            order.address.toLowerCase().contains(query);
      }).toList();
    });
  }

  void _navigateToForm(String serviceOrderId) {
    Navigator.pushNamed(
      context,
      '/inspection-form',
      arguments: serviceOrderId,
    );
  }

  void _showOrderDetailsBottomSheet(BuildContext context, ServiceOrder order) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return OrderDetailsBottomSheet(
          order: order,
          onOpenForm: () {
            Navigator.pop(ctx); // Fecha o modal
            _navigateToForm(order.id); // Abre o formulário
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text(
          'Ordens de Serviço',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            tooltip: 'Sair do App',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Header com busca
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Buscar por OS, cliente ou endereço...',
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () => _searchController.clear(),
                      )
                    : null,
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Lista de Ordens de Serviço
          Expanded(
            child: _filteredOrders.isEmpty
                ? Center(
                    child: Text(
                      'Nenhuma ordem de serviço encontrada.',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 80),
                    itemCount: _filteredOrders.length,
                    itemBuilder: (context, index) {
                      final order = _filteredOrders[index];
                      return ServiceOrderCard(
                        order: order,
                        onTapDetails: () =>
                            _showOrderDetailsBottomSheet(context, order),
                        onOpenForm: () => _navigateToForm(order.id),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class ServiceOrderCard extends StatelessWidget {
  final ServiceOrder order;
  final VoidCallback onTapDetails;
  final VoidCallback onOpenForm;

  const ServiceOrderCard({
    super.key,
    required this.order,
    required this.onTapDetails,
    required this.onOpenForm,
  });

  Color _getStatusColor(String status) {
    switch (status) {
      case 'completed':
        return Colors.green[700]!;
      case 'syncing':
        return Colors.amber[800]!;
      case 'pending':
      default:
        return const Color(0xFF0288D1);
    }
  }

  String _getStatusText(String status) {
    switch (status) {
      case 'completed':
        return 'Concluída';
      case 'syncing':
        return 'Pendente Envio';
      case 'pending':
      default:
        return 'Pendente';
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(order.status);
    final isPending = order.status == 'pending';

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTapDetails,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Linha Superior
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      order.id,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: statusColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      _getStatusText(order.status),
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Título
              Text(
                order.title,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Cliente
              Row(
                children: [
                  const Icon(Icons.business_rounded,
                      size: 18, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      order.clientName,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),

              // Endereço
              Row(
                children: [
                  const Icon(Icons.location_on_outlined,
                      size: 18, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      order.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ),
                ],
              ),
              const Divider(height: 24),

              // Botões de Ação
              Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: onTapDetails,
                    icon: const Icon(Icons.info_outline_rounded, size: 18),
                    label: const Text('Detalhes'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: isPending ? onOpenForm : null,
                      icon: const Icon(Icons.assignment_add, size: 18),
                      label: Text(
                        isPending ? 'INSPECIONAR' : 'CONCLUÍDO',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Modal de Detalhes
class OrderDetailsBottomSheet extends StatelessWidget {
  final ServiceOrder order;
  final VoidCallback onOpenForm;

  const OrderDetailsBottomSheet({
    super.key,
    required this.order,
    required this.onOpenForm,
  });

  @override
  Widget build(BuildContext context) {
    final isPending = order.status == 'pending';

    return Padding(
      padding: EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: MediaQuery.of(context).padding.bottom + 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order.id,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
          Text(
            order.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              order.description,
              style: TextStyle(color: Colors.blue[900], fontSize: 14),
            ),
          ),
          const SizedBox(height: 20),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(child: Icon(Icons.business_rounded)),
            title: Text(order.clientName),
            subtitle: const Text('Cliente responsável'),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(child: Icon(Icons.location_on_rounded)),
            title: Text(order.address),
            subtitle: const Text('Endereço de execução'),
          ),
          const SizedBox(height: 24),

          // Botão Direcionando para o Formulário de Inspeção
          ElevatedButton.icon(
            onPressed: isPending ? onOpenForm : null,
            icon: const Icon(Icons.edit_note_rounded),
            label: Text(
              isPending
                  ? 'PREENCHER FORMULÁRIO DE INSPEÇÃO'
                  : 'INSPEÇÃO JÁ REALIZADA',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}