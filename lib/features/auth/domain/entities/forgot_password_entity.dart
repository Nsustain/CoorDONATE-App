
import 'package:equatable/equatable.dart';

class ForgotPassword extends Equatable {
    final String email;

    ForgotPassword({
      required this.email
    }) : super();

    @override
    List<Object> get props => [email];

}

class VerifyOTPParam extends Equatable {

  final String email;
  final int otp;

  VerifyOTPParam({
    required this.email, 
    required this.otp
  }) : super();

  @override
  List<Object> get props => [otp, email];
}


class ResetPasswordParam extends Equatable {
  final String email;
  final String newPassword;

  ResetPasswordParam({
    required this.email,
    required this.newPassword  
  }) : super();

  @override
  List<Object> get props => [email];

}