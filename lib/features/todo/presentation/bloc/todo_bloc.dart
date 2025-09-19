import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_arch_v2/core/di/injection.dart';
import '../../domain/usecases/get_todos_usecase.dart';
import 'todo_event.dart';
import 'todo_state.dart';
import '../../domain/entities/todo_entity.dart';
import '../ui_models/todo_ui_model.dart';
import '../../mappers/todo_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUseCase getTodosUseCase;
  final TodoMapper mapper;

  final List<TodoEntity> _cache = [];

final tmpGetTodosUseCase = getIt<GetTodosUseCase>();

  TodoBloc(this.getTodosUseCase, this.mapper) : super(const TodoInitial()) {
    on<LoadTodosEvent>(_onLoadTodos);
    on<AddTodoEvent>(_onAddTodo);
    on<ToggleTodoEvent>(_onToggleTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
  }

  Future<void> _onLoadTodos(
    LoadTodosEvent event,
    Emitter<TodoState> emit,
  ) async {
    
    emit(const TodoLoading());
    final result = await getTodosUseCase(NoParams());
    result.fold((failure) => emit(TodoError(failure.message)), (todos) {
      _cache
        ..clear()
        ..addAll(todos);
      emit(_emitUi());
    });
  }

  void _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    final newTodo = TodoEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: event.title,
      completed: false,
    );
    _cache.add(newTodo);
    emit(_emitUi());
  }

  void _onToggleTodo(ToggleTodoEvent event, Emitter<TodoState> emit) {
    final index = _cache.indexWhere((t) => t.id == event.id);
    if (index != -1) {
      final current = _cache[index];
      _cache[index] = current.copyWith(completed: !current.completed);
      emit(_emitUi());
    }
  }

  void _onDeleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
    _cache.removeWhere((t) => t.id == event.id);
    emit(_emitUi());
  }

  TodoLoaded _emitUi() {
    final uiList = _cache
        .map((e) => mapper.convert<TodoEntity, TodoUiModel>(e))
        .toList(growable: false);
    return TodoLoaded(List.unmodifiable(uiList));
  }
}
