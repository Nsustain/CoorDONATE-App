import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/data/models/forgot_password_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, RegisterResponse>> register(
    RegisterParams registerParams,
  );

  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);

  Future<Either<Failure, ForgotPasswordResponseModel>> sendEmail(ForgotPasswordModel email);

  Future<Either<Failure, ForgotPasswordResponseModel>> verifyOTP(VerifyOTPParamModel verifyOTPParamModel);

  Future<Either<Failure, ForgotPasswordResponseModel>> resetPassword(ResetPasswordParamModel resetPasswordParamModel);
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

  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> sendEmail(ForgotPasswordModel forgotPasswordModel) async {
    final response = await _client.postRequest('api/auth/forgot-password', data: forgotPasswordModel.toJson(), converter: (response) => ForgotPasswordResponseModel(message: response['message']));
    return  response;
  }
  
  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> verifyOTP(VerifyOTPParamModel verifyOTPParamModel) async {
    // TODO: implement verifyOTP
    final response = await _client.postRequest('api/auth/verify-otp', data: verifyOTPParamModel.toJson() , converter: ((response) => ForgotPasswordResponseModel(message: response['message'])));

    return response;
  }
  
  @override
  Future<Either<Failure, ForgotPasswordResponseModel>> resetPassword(ResetPasswordParamModel resetPasswordParamModel) async{
    // TODO: implement resetPassword
    final response = await _client.postRequest('api/auth/reset-password', data: resetPasswordParamModel.toJson(), converter: ((response) => ForgotPasswordResponseModel(message: response['message'])));

    return response;
  }

  

  
}
