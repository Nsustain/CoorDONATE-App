import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/data/models/forgot_password_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  
  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> sendEmail(ForgotPassword email) async {
    ForgotPasswordModel model = ForgotPasswordModel(email: email.email);
    final response = await authRemoteDatasource.sendEmail(model);

    return response.fold((failure) => Left(failure), (res) => Right(res));
  }

  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> verifyOTP(VerifyOTPParam verifyOTPParam) async {
    VerifyOTPParamModel model = VerifyOTPParamModel(email: verifyOTPParam.email, otp: verifyOTPParam.otp);

    final response = await authRemoteDatasource.verifyOTP(model);

    return response.fold((failure) => Left(failure), (r) => Right(r));
  }
  
  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> resetPassword(ResetPasswordParam resetPasswordParam) async {
    // TODO: implement resetPassword
    ResetPasswordParamModel model = ResetPasswordParamModel(email: resetPasswordParam.email, newPassword: resetPasswordParam.newPassword);

    final response = await authRemoteDatasource.resetPassword(model);

    return response.fold((failure) => Left(failure), (r) => Right(r));

  }
}
