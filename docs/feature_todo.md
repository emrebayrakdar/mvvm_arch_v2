# Todo Feature

## Katmanlar

### Data
- **DTO:** API'den gelen/giden veriler (`todo_dto.dart`)
- **Datasource:** API çağrıları
- **Repository Implementation:** Domain interface'ini uygular

### Domain
- **Entity:** İş kurallarına uygun model (`todo_entity.dart`)
- **Repository Interface:** Data katmanından bağımsız
- **Usecase:** CRUD işlemleri

### Presentation
- **Bloc:** UI ile domain/usecase arasındaki köprü
- **UI Model:** Ekrana özel model
- **Mapper:** DTO/Entity/UI Model dönüşümleri

## Örnek Kodlar

### DTO
```dart
@freezed
class TodoDto with _$TodoDto {
  factory TodoDto({
    required String id,
    required String title,
    required bool completed,
  }) = _TodoDto;
  factory TodoDto.fromJson(Map<String, dynamic> json) => _$TodoDtoFromJson(json);
}
```

### Entity
```dart
@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required String id,
    required String title,
    required bool completed,
  }) = _TodoEntity;
}
```

### UI Model
```dart
@freezed
class TodoUiModel with _$TodoUiModel {
  factory TodoUiModel({
    required String id,
    required String title,
    required bool completed,
  }) = _TodoUiModel;
}
```

### Mapper
```dart
@AutoMappr([
  MapType<TodoEntity, TodoUiModel>(),
])
class TodoMapper extends $TodoMapper {}
```

### Usecase
```dart
class GetTodosUseCase extends BaseUseCase<List<TodoEntity>, NoParams> {
  final TodoRepository repository;
  GetTodosUseCase(this.repository);
  @override
  Future<Either<Failure, List<TodoEntity>>> call(NoParams params) {
    return repository.getTodos();
  }
}
```

### Bloc
```dart
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUseCase getTodosUseCase;
  TodoBloc(this.getTodosUseCase) : super(TodoInitial()) {
    on<LoadTodosEvent>((event, emit) async {
      emit(TodoLoading());
      final result = await getTodosUseCase(NoParams());
      result.fold(
        (failure) => emit(TodoError(failure.message)),
        (todos) => emit(TodoLoaded(todos)),
      );
    });
  }
}
```

## Hata Yönetimi
- dartz ile Either kullanılır.
- Dio interceptor ile global hata yönetimi.

## Bağımlılık Enjeksiyonu
- get_it ve injectable ile modüler DI.

## Model Dönüşümü
- auto_mappr ile DTO, Entity ve UI Model arasında dönüşüm.
