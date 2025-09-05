import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_ui_model.freezed.dart';

@freezed
class UserUiModel with _$UserUiModel {
  factory UserUiModel({required String email, required String token}) =
      _UserUiModel;
}
