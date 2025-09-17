// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoUiModel {

 String get id; String get title; bool get completed;
/// Create a copy of TodoUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoUiModelCopyWith<TodoUiModel> get copyWith => _$TodoUiModelCopyWithImpl<TodoUiModel>(this as TodoUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completed, completed) || other.completed == completed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,completed);

@override
String toString() {
  return 'TodoUiModel(id: $id, title: $title, completed: $completed)';
}


}

/// @nodoc
abstract mixin class $TodoUiModelCopyWith<$Res>  {
  factory $TodoUiModelCopyWith(TodoUiModel value, $Res Function(TodoUiModel) _then) = _$TodoUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, bool completed
});




}
/// @nodoc
class _$TodoUiModelCopyWithImpl<$Res>
    implements $TodoUiModelCopyWith<$Res> {
  _$TodoUiModelCopyWithImpl(this._self, this._then);

  final TodoUiModel _self;
  final $Res Function(TodoUiModel) _then;

/// Create a copy of TodoUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? completed = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoUiModel].
extension TodoUiModelPatterns on TodoUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TodoUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodoUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  bool completed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoUiModel() when $default != null:
return $default(_that.id,_that.title,_that.completed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  bool completed)  $default,) {final _that = this;
switch (_that) {
case _TodoUiModel():
return $default(_that.id,_that.title,_that.completed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  bool completed)?  $default,) {final _that = this;
switch (_that) {
case _TodoUiModel() when $default != null:
return $default(_that.id,_that.title,_that.completed);case _:
  return null;

}
}

}

/// @nodoc


class _TodoUiModel implements TodoUiModel {
   _TodoUiModel({required this.id, required this.title, required this.completed});
  

@override final  String id;
@override final  String title;
@override final  bool completed;

/// Create a copy of TodoUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoUiModelCopyWith<_TodoUiModel> get copyWith => __$TodoUiModelCopyWithImpl<_TodoUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.completed, completed) || other.completed == completed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,completed);

@override
String toString() {
  return 'TodoUiModel(id: $id, title: $title, completed: $completed)';
}


}

/// @nodoc
abstract mixin class _$TodoUiModelCopyWith<$Res> implements $TodoUiModelCopyWith<$Res> {
  factory _$TodoUiModelCopyWith(_TodoUiModel value, $Res Function(_TodoUiModel) _then) = __$TodoUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, bool completed
});




}
/// @nodoc
class __$TodoUiModelCopyWithImpl<$Res>
    implements _$TodoUiModelCopyWith<$Res> {
  __$TodoUiModelCopyWithImpl(this._self, this._then);

  final _TodoUiModel _self;
  final $Res Function(_TodoUiModel) _then;

/// Create a copy of TodoUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? completed = null,}) {
  return _then(_TodoUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
