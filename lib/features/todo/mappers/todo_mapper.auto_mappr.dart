// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../data/models/todo_dto.dart' as _i2;
import '../domain/entities/todo_entity.dart' as _i3;
import '../presentation/ui_models/todo_ui_model.dart' as _i4;

/// {@template package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
/// Available mappings:
/// - `TodoDto` → `TodoEntity`.
/// - `TodoEntity` → `TodoUiModel`.
/// {@endtemplate}
class $TodoMapper implements _i1.AutoMapprInterface {
  const $TodoMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TodoDto>() ||
            sourceTypeOf == _typeOf<_i2.TodoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.TodoEntity>() ||
            targetTypeOf == _typeOf<_i3.TodoEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.TodoEntity>() ||
            sourceTypeOf == _typeOf<_i3.TodoEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.TodoUiModel>() ||
            targetTypeOf == _typeOf<_i4.TodoUiModel?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(model, onMappingError: onMappingError);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model, onMappingError: onMappingError);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
        (item) => _safeConvert(item, onMappingError: onMappingError),
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TodoDto>() ||
            sourceTypeOf == _typeOf<_i2.TodoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.TodoEntity>() ||
            targetTypeOf == _typeOf<_i3.TodoEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$TodoDto_To__i3$TodoEntity((model as _i2.TodoDto?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.TodoEntity>() ||
            sourceTypeOf == _typeOf<_i3.TodoEntity?>()) &&
        (targetTypeOf == _typeOf<_i4.TodoUiModel>() ||
            targetTypeOf == _typeOf<_i4.TodoUiModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$TodoEntity_To__i4$TodoUiModel((model as _i3.TodoEntity?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(model, canReturnNull: true);
    }
    try {
      return _convert(model, canReturnNull: true);
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:mvvm_arch_v2/features/todo/mappers/todo_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.TodoEntity _map__i2$TodoDto_To__i3$TodoEntity(_i2.TodoDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping TodoDto → TodoEntity failed because TodoDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<TodoDto, TodoEntity> to handle null values during mapping.',
      );
    }
    return _i3.TodoEntity(
      id: model.id,
      title: model.title,
      completed: model.completed,
    );
  }

  _i4.TodoUiModel _map__i3$TodoEntity_To__i4$TodoUiModel(
    _i3.TodoEntity? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping TodoEntity → TodoUiModel failed because TodoEntity was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<TodoEntity, TodoUiModel> to handle null values during mapping.',
      );
    }
    return _i4.TodoUiModel(
      id: model.id,
      title: model.title,
      completed: model.completed,
    );
  }
}
