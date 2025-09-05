import 'package:dartz/dartz.dart';
import '../../../../core/base/base_usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';
import '../../../../core/error/failure.dart';

class LoginParams {
  final String email;
  final String password;
  LoginParams(this.email, this.password);
}

class LoginUseCase extends BaseUseCase<UserEntity, LoginParams> {
  final AuthRepository repository;
  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return repository.login(params.email, params.password);
  }
}
