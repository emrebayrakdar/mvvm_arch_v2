import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Hataları dartz Either ile yönlendir
    super.onError(err, handler);
  }
}
