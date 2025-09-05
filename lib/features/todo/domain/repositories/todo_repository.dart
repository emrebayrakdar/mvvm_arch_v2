import '../../../../core/base/base_repository.dart';
import '../entities/todo_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

abstract class TodoRepository extends BaseRepository {
  Future<Either<Failure, List<TodoEntity>>> getTodos();
}
