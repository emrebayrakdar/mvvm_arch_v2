import 'package:dartz/dartz.dart';
import '../error/failure.dart';

// ignore: avoid_types_as_parameter_names
abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
