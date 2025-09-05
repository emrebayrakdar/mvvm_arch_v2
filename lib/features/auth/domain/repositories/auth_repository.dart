import '../../../../core/base/base_repository.dart';
import '../entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

abstract class AuthRepository extends BaseRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);
}
