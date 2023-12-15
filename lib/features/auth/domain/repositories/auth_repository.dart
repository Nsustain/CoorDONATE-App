import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/data/models/forgot_password_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseEntity>> login(LoginParams loginParams);

  Future<Either<Failure, RegisterResponse>> register(
      RegisterParams registerParams);

  Future<Either<Failure, ForgotPasswordResponseModel>> sendEmail(ForgotPassword email);

  Future<Either<Failure, ForgotPasswordResponseModel>> verifyOTP(VerifyOTPParam verifyOTPParam);

  Future<Either<Failure, ForgotPasswordResponseModel>> resetPassword(ResetPasswordParam verifyOTPParam);
}
