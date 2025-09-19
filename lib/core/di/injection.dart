import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'injection.config.dart';

@module
abstract class CoreModule {
  @lazySingleton
  Dio dio() => Dio();
}

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
