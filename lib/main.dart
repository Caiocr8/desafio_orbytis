import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_page.dart';
import 'features/inspection/presentation/pages/inspection_form_page.dart';
import 'features/service_orders/presentation/pages/service_orders_page.dart';
import 'core/services/database_service.dart';

late final DatabaseService databaseService;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa o banco de dados Isar
  databaseService = DatabaseService();
  await databaseService.init();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inspeção de Campo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0288D1),
          brightness: Brightness.light,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/login',
      onGenerateRoute: (settings) {
        if (settings.name == '/login') {
          return MaterialPageRoute(builder: (_) => const LoginPage());
        }
        if (settings.name == '/service-orders') {
          return MaterialPageRoute(builder: (_) => const ServiceOrdersPage());
        }
        if (settings.name == '/inspection-form') {
          final serviceOrderId = settings.arguments as String? ?? 'OS-0000';
          return MaterialPageRoute(
            builder: (_) => InspectionFormPage(serviceOrderId: serviceOrderId),
          );
        }
        return null;
      },
    );
  }
}