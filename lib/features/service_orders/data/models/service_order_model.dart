import 'package:isar/isar.dart';

part 'service_order_model.g.dart';

@collection
class ServiceOrderModel {
  Id id = Isar.autoIncrement; // ID interno do Isar

  @Index(unique: true, replace: true)
  String? remoteId; // ID que vem da API (ex: wo_1001)

  String? code;
  String? title;
  String? description;
  String? address;
  String? priority;
  String? status;
  double? latitude;
  double? longitude;
  DateTime? scheduledAt;
  DateTime? updatedAt;
  String? notes;
}