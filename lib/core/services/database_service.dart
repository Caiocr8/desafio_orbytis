import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:desafio_orbytis/features/service_orders/data/models/service_order_model.dart';
import 'package:desafio_orbytis/features/inspection/data/models/inspection_model.dart';


class DatabaseService {
  late final Isar isar;


  /// Inicializa o banco de dados. Deve ser chamado no main.dart
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [ServiceOrderModelSchema, InspectionModelSchema],
      directory: dir.path,
    );
  }

  // ORDENS DE SERVIÇO
  /// Salva a lista de OS vinda da API no banco local
  Future<void> saveServiceOrders(List<ServiceOrderModel> orders) async {
    await isar.writeTxn(() async {
      await isar.serviceOrderModels.putAll(orders);
    });
  }

  /// Busca todas as OS salvas localmente
  Future<List<ServiceOrderModel>> getAllServiceOrders() async {
    return await isar.serviceOrderModels.where().findAll();
  }
  

  // INSPEÇÕES
  /// Salva ou atualiza uma inspeção (rascunho, pendente, erro ou sucesso)
  Future<void> saveInspection(InspectionModel inspection) async {
    await isar.writeTxn(() async {
      await isar.inspectionModels.put(inspection);
    });
  }

  /// Busca inspeções por status (útil para o Worker que vai tentar enviar em background)
  Future<List<InspectionModel>> getInspectionsBySyncStatus(String status) async {
    return await isar.inspectionModels
        .filter()
        .syncStatusEqualTo(status)
        .findAll();
  }

  /// Observa todas as inspeções em tempo real (Excelente para a tela de histórico)
  Stream<List<InspectionModel>> watchAllInspections() {
    return isar.inspectionModels.where().watch(fireImmediately: true);
  }
}