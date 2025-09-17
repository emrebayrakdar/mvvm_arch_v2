import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:mvvm_arch_v2/features/todo/data/models/todo_dto.dart';
import 'package:mvvm_arch_v2/features/todo/domain/entities/todo_entity.dart';
import 'package:mvvm_arch_v2/features/todo/presentation/ui_models/todo_ui_model.dart';
import 'todo_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<TodoDto, TodoEntity>(),
  MapType<TodoEntity, TodoUiModel>(),
])
class TodoMapper extends $TodoMapper {}
