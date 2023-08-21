import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseEntity>> login(LoginParams loginParams);

  Future<Either<Failure, RegisterResponse>> register(
      RegisterParams registerParams);
}
