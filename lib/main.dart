import 'package:desafio_orbytis/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext me) {
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
      // TODO: Redirecionar baseado no estado de autenticação (logado ou não)
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/service-orders': (context) => const Scaffold(
              body: Center(child: Text('Tela de Ordens de Serviço')),
            ),
      },
    );
  }
}