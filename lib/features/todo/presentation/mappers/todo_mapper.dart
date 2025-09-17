import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import '../../domain/entities/todo_entity.dart';
import '../ui_models/todo_ui_model.dart';
part 'todo_mapper.freezed.dart';


@AutoMappr([MapType<TodoEntity, TodoUiModel>()])
 class TodoMapper extends $TodoMapper {}
