import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  );

  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final DioClient _client;

  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, RegisterResponse>> register(
      RegisterParams registerParams) async {
    final response = await _client.postRequest(
      "/api/auth/register",
      data: registerParams.toJson(),
      converter: (response) => RegisterResponse.fromJson(response),
    );

    return response;
  }

  @override
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams) async {
    final response = await _client.postRequest(
      "/api/auth/login",
      data: loginParams.toJson(),
      converter: (response) => LoginResponse.fromJson(response),
    );

    return response;
  }
}
