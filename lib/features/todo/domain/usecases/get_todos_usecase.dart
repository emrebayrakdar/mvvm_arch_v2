import 'package:dartz/dartz.dart';
import '../../../../core/base/base_usecase.dart';
import '../entities/todo_entity.dart';
import '../repositories/todo_repository.dart';
import '../../../../core/error/failure.dart';

class NoParams {}

class GetTodosUseCase extends BaseUseCase<List<TodoEntity>, NoParams> {
  final TodoRepository repository;
  GetTodosUseCase(this.repository);

  @override
  Future<Either<Failure, List<TodoEntity>>> call(NoParams params) {
    return repository.getTodos();
  }
}
