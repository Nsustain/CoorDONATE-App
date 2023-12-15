
import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/data/models/forgot_password_response.dart';
import 'package:coordonate_app/features/auth/data/models/models.dart';
import 'package:coordonate_app/features/auth/domain/entities/entities.dart';
import 'package:coordonate_app/features/auth/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';

class SendEmail {
  final AuthRepository repository;
  SendEmail({
    required this.repository
  });

  Future<Either<Failure, ForgotPasswordResponseModel>> call(ForgotPassword email) async{
    return await repository.sendEmail(email);
  }

}

class VerifyOTP {
  final AuthRepository repository;

  VerifyOTP({
    required this.repository
  });

  Future<Either<Failure, ForgotPasswordResponseModel>> call(VerifyOTPParam verifyOTPParam) async {
    return await repository.verifyOTP(verifyOTPParam);
  }

}

class ResetPassword {
  final AuthRepository repository;

  ResetPassword({
    required this.repository
  });

  Future<Either<Failure, ForgotPasswordResponseModel>> call(ResetPasswordParam resetPasswordParam) async {
    return await repository.resetPassword(resetPasswordParam);
  }
}