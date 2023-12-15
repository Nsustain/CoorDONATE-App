


abstract class OTPEvent {}

class ForgotPasswordButtonPressedEvent extends OTPEvent {
  final String email;

  ForgotPasswordButtonPressedEvent({
    required this.email
  });
}

abstract class VerifyOTPEvent {}

class VerifyOTPButtonPressedEvent extends VerifyOTPEvent {
  final int otp;
  final String email;

  VerifyOTPButtonPressedEvent({
    required this.otp,
    required this.email
  });
}

abstract class ResetPasswordEvent {}

class ResetPasswordButtonPressedEvent extends ResetPasswordEvent{

  final String email;
  final String newPassword;

  ResetPasswordButtonPressedEvent({
    required this.email,
    required this.newPassword
  });
}