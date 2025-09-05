// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserUiModel {
  String get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Create a copy of UserUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUiModelCopyWith<UserUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUiModelCopyWith<$Res> {
  factory $UserUiModelCopyWith(
          UserUiModel value, $Res Function(UserUiModel) then) =
      _$UserUiModelCopyWithImpl<$Res, UserUiModel>;
  @useResult
  $Res call({String email, String token});
}

/// @nodoc
class _$UserUiModelCopyWithImpl<$Res, $Val extends UserUiModel>
    implements $UserUiModelCopyWith<$Res> {
  _$UserUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUiModelImplCopyWith<$Res>
    implements $UserUiModelCopyWith<$Res> {
  factory _$$UserUiModelImplCopyWith(
          _$UserUiModelImpl value, $Res Function(_$UserUiModelImpl) then) =
      __$$UserUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String token});
}

/// @nodoc
class __$$UserUiModelImplCopyWithImpl<$Res>
    extends _$UserUiModelCopyWithImpl<$Res, _$UserUiModelImpl>
    implements _$$UserUiModelImplCopyWith<$Res> {
  __$$UserUiModelImplCopyWithImpl(
      _$UserUiModelImpl _value, $Res Function(_$UserUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_$UserUiModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserUiModelImpl implements _UserUiModel {
  _$UserUiModelImpl({required this.email, required this.token});

  @override
  final String email;
  @override
  final String token;

  @override
  String toString() {
    return 'UserUiModel(email: $email, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUiModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, token);

  /// Create a copy of UserUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUiModelImplCopyWith<_$UserUiModelImpl> get copyWith =>
      __$$UserUiModelImplCopyWithImpl<_$UserUiModelImpl>(this, _$identity);
}

abstract class _UserUiModel implements UserUiModel {
  factory _UserUiModel(
      {required final String email,
      required final String token}) = _$UserUiModelImpl;

  @override
  String get email;
  @override
  String get token;

  /// Create a copy of UserUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUiModelImplCopyWith<_$UserUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
