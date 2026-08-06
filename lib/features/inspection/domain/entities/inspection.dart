class Inspection {
  final String id;
  final String serviceOrderId;
  final String observation;
  final String imagePath; // Caminho local da foto no dispositivo
  final double latitude;
  final double longitude;
  final DateTime createdAt;
  final bool isSynced; // Flag fundamental para controlar o offline-first

  const Inspection({
    required this.id,
    required this.serviceOrderId,
    required this.observation,
    required this.imagePath,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    this.isSynced = false,
  });
}