import 'package:dio/dio.dart';

class AppInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // Hataları dartz Either ile yönlendir
    super.onError(err, handler);
  }
}
