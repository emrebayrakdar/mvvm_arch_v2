// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserUiModel {

 String get email; String get token;
/// Create a copy of UserUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUiModelCopyWith<UserUiModel> get copyWith => _$UserUiModelCopyWithImpl<UserUiModel>(this as UserUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUiModel&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,email,token);

@override
String toString() {
  return 'UserUiModel(email: $email, token: $token)';
}


}

/// @nodoc
abstract mixin class $UserUiModelCopyWith<$Res>  {
  factory $UserUiModelCopyWith(UserUiModel value, $Res Function(UserUiModel) _then) = _$UserUiModelCopyWithImpl;
@useResult
$Res call({
 String email, String token
});




}
/// @nodoc
class _$UserUiModelCopyWithImpl<$Res>
    implements $UserUiModelCopyWith<$Res> {
  _$UserUiModelCopyWithImpl(this._self, this._then);

  final UserUiModel _self;
  final $Res Function(UserUiModel) _then;

/// Create a copy of UserUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? token = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserUiModel].
extension UserUiModelPatterns on UserUiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserUiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserUiModel value)  $default,){
final _that = this;
switch (_that) {
case _UserUiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserUiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserUiModel() when $default != null:
return $default(_that.email,_that.token);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String token)  $default,) {final _that = this;
switch (_that) {
case _UserUiModel():
return $default(_that.email,_that.token);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String token)?  $default,) {final _that = this;
switch (_that) {
case _UserUiModel() when $default != null:
return $default(_that.email,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _UserUiModel implements UserUiModel {
   _UserUiModel({required this.email, required this.token});
  

@override final  String email;
@override final  String token;

/// Create a copy of UserUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUiModelCopyWith<_UserUiModel> get copyWith => __$UserUiModelCopyWithImpl<_UserUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUiModel&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,email,token);

@override
String toString() {
  return 'UserUiModel(email: $email, token: $token)';
}


}

/// @nodoc
abstract mixin class _$UserUiModelCopyWith<$Res> implements $UserUiModelCopyWith<$Res> {
  factory _$UserUiModelCopyWith(_UserUiModel value, $Res Function(_UserUiModel) _then) = __$UserUiModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String token
});




}
/// @nodoc
class __$UserUiModelCopyWithImpl<$Res>
    implements _$UserUiModelCopyWith<$Res> {
  __$UserUiModelCopyWithImpl(this._self, this._then);

  final _UserUiModel _self;
  final $Res Function(_UserUiModel) _then;

/// Create a copy of UserUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? token = null,}) {
  return _then(_UserUiModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
