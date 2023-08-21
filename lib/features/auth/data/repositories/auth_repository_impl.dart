import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  /// Data Source
  final AuthRemoteDatasource authRemoteDatasource;

  const AuthRepositoryImpl(this.authRemoteDatasource);

  @override
  Future<Either<Failure, LoginResponseEntity>> login(
      LoginParams loginParams) async {
    final response = await authRemoteDatasource.login(loginParams);

    return response.fold(
      (failure) => Left(failure),
      (loginResponse) {
        return Right(loginResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  ) async {
    final response = await authRemoteDatasource.register(registerParams);

    return response.fold(
      (failure) => Left(failure),
      (registerResponse) {
        return Right(registerResponse);
      },
    );
  }
}
