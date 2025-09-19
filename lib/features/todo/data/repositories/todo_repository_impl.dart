import 'package:dartz/dartz.dart';
import '../../domain/entities/todo_entity.dart';
import '../../domain/repositories/todo_repository.dart';
import '../datasources/todo_remote_datasource.dart';
import '../models/todo_dto.dart';
import '../../../../core/error/failure.dart';
import '../../mappers/todo_mapper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl extends TodoRepository {
  final TodoRemoteDatasource remoteDatasource;
  final TodoMapper mapper;

  TodoRepositoryImpl(this.remoteDatasource, this.mapper);

  @override
  Future<Either<Failure, List<TodoEntity>>> getTodos() async {
    try {
      final dtos = await remoteDatasource.fetchTodos();
      List<TodoEntity> entities = dtos
          .map((dto) => mapper.convert<TodoDto, TodoEntity>(dto))
          .toList();
      return Right(entities);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
