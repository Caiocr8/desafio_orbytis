class ServiceOrder {
  final String id;
  final String title;
  final String description;
  final String clientName;
  final String address;
  final String status; // Ex: 'pending', 'completed', 'syncing'

  const ServiceOrder({
    required this.id,
    required this.title,
    required this.description,
    required this.clientName,
    required this.address,
    required this.status,
  });
}