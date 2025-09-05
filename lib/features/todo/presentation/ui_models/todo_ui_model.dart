import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_ui_model.freezed.dart';

@freezed
class TodoUiModel with _$TodoUiModel {
  factory TodoUiModel({
    required String id,
    required String title,
    required bool completed,
  }) = _TodoUiModel;
}
