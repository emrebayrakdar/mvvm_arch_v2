import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_todos_usecase.dart';
import '../../domain/entities/todo_entity.dart';
import '../../../../core/error/failure.dart';

abstract class TodoEvent {}

class LoadTodosEvent extends TodoEvent {}

abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<TodoEntity> todos;
  TodoLoaded(this.todos);
}

class TodoError extends TodoState {
  final String message;
  TodoError(this.message);
}

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUseCase getTodosUseCase;
  TodoBloc(this.getTodosUseCase) : super(TodoInitial()) {
    on<LoadTodosEvent>((event, emit) async {
      emit(TodoLoading());
      final result = await getTodosUseCase(NoParams());
      result.fold(
        (failure) => emit(TodoError(failure.message)),
        (todos) => emit(TodoLoaded(todos)),
      );
    });
  }
}
