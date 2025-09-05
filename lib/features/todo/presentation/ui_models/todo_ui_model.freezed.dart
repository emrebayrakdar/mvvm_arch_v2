// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoUiModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Create a copy of TodoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoUiModelCopyWith<TodoUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUiModelCopyWith<$Res> {
  factory $TodoUiModelCopyWith(
          TodoUiModel value, $Res Function(TodoUiModel) then) =
      _$TodoUiModelCopyWithImpl<$Res, TodoUiModel>;
  @useResult
  $Res call({String id, String title, bool completed});
}

/// @nodoc
class _$TodoUiModelCopyWithImpl<$Res, $Val extends TodoUiModel>
    implements $TodoUiModelCopyWith<$Res> {
  _$TodoUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoUiModelImplCopyWith<$Res>
    implements $TodoUiModelCopyWith<$Res> {
  factory _$$TodoUiModelImplCopyWith(
          _$TodoUiModelImpl value, $Res Function(_$TodoUiModelImpl) then) =
      __$$TodoUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, bool completed});
}

/// @nodoc
class __$$TodoUiModelImplCopyWithImpl<$Res>
    extends _$TodoUiModelCopyWithImpl<$Res, _$TodoUiModelImpl>
    implements _$$TodoUiModelImplCopyWith<$Res> {
  __$$TodoUiModelImplCopyWithImpl(
      _$TodoUiModelImpl _value, $Res Function(_$TodoUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$TodoUiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoUiModelImpl implements _TodoUiModel {
  _$TodoUiModelImpl(
      {required this.id, required this.title, required this.completed});

  @override
  final String id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoUiModel(id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoUiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, completed);

  /// Create a copy of TodoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoUiModelImplCopyWith<_$TodoUiModelImpl> get copyWith =>
      __$$TodoUiModelImplCopyWithImpl<_$TodoUiModelImpl>(this, _$identity);
}

abstract class _TodoUiModel implements TodoUiModel {
  factory _TodoUiModel(
      {required final String id,
      required final String title,
      required final bool completed}) = _$TodoUiModelImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get completed;

  /// Create a copy of TodoUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoUiModelImplCopyWith<_$TodoUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
