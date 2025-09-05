# Auth Feature

## Katmanlar

### Data
- **DTO:** API'den gelen/giden veriler (`login_dto.dart`)
- **Datasource:** API çağrıları
- **Repository Implementation:** Domain interface'ini uygular

### Domain
- **Entity:** İş kurallarına uygun model (`user_entity.dart`)
- **Repository Interface:** Data katmanından bağımsız
- **Usecase:** Login/Register işlemleri

### Presentation
- **Bloc:** UI ile domain/usecase arasındaki köprü
- **UI Model:** Ekrana özel model
- **Mapper:** DTO/Entity/UI Model dönüşümleri

## Örnek Kodlar

### DTO
```dart
@freezed
class LoginDto with _$LoginDto {
  factory LoginDto({
    required String email,
    required String password,
  }) = _LoginDto;
  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}
```

### Entity
```dart
@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required String id,
    required String email,
    required String token,
  }) = _UserEntity;
}
```

### UI Model
```dart
@freezed
class UserUiModel with _$UserUiModel {
  factory UserUiModel({
    required String email,
    required String token,
  }) = _UserUiModel;
}
```

### Mapper
```dart
@AutoMappr([
  MapType<UserEntity, UserUiModel>(),
])
class UserMapper extends $UserMapper {}
```

### Usecase
```dart
class LoginUseCase extends BaseUseCase<UserEntity, LoginParams> {
  final AuthRepository repository;
  LoginUseCase(this.repository);
  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return repository.login(params.email, params.password);
  }
}
```

### Bloc
```dart
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  AuthBloc(this.loginUseCase) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await loginUseCase(LoginParams(event.email, event.password));
      result.fold(
        (failure) => emit(AuthError(failure.message)),
        (user) => emit(AuthSuccess(user)),
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
