import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  late final Dio dio; // <-- O ponto e vírgula aqui é essencial!

  ApiClient() {
    // Configuração base da API
    dio = Dio(
      BaseOptions(
        // URL para o Emulador Android
        baseUrl: 'http://10.0.2.2:3000',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Interceptor para injetar o Token em todas as requisições autenticadas
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Antes de qualquer chamada, tentamos pegar o token salvo
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString('access_token');
          
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
  }
}