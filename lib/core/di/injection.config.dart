// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mvvm_arch_v2/core/di/injection.dart' as _i560;
import 'package:mvvm_arch_v2/features/todo/data/datasources/todo_remote_datasource.dart'
    as _i886;
import 'package:mvvm_arch_v2/features/todo/data/repositories/todo_repository_impl.dart'
    as _i815;
import 'package:mvvm_arch_v2/features/todo/domain/repositories/todo_repository.dart'
    as _i183;
import 'package:mvvm_arch_v2/features/todo/domain/usecases/get_todos_usecase.dart'
    as _i758;
import 'package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart' as _i686;
import 'package:mvvm_arch_v2/features/todo/presentation/bloc/todo_view_model.dart'
    as _i538;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final coreModule = _$CoreModule();
    gh.lazySingleton<_i361.Dio>(() => coreModule.dio());
    gh.lazySingleton<_i686.TodoMapper>(() => _i686.TodoMapper());
    gh.lazySingleton<_i886.TodoRemoteDatasource>(
      () => _i886.TodoRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i183.TodoRepository>(
      () => _i815.TodoRepositoryImpl(
        gh<_i886.TodoRemoteDatasource>(),
        gh<_i686.TodoMapper>(),
      ),
    );
    gh.lazySingleton<_i758.GetTodosUseCase>(
      () => _i758.GetTodosUseCase(gh<_i183.TodoRepository>()),
    );
    gh.factory<_i538.TodoViewModel>(
      () => _i538.TodoViewModel(
        gh<_i758.GetTodosUseCase>(),
        gh<_i686.TodoMapper>(),
      ),
    );
    return this;
  }
}

class _$CoreModule extends _i560.CoreModule {}
