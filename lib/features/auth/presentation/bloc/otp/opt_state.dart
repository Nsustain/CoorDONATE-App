import 'package:coordonate_app/features/feed/presentation/screen/profile_page.dart';
import 'package:equatable/equatable.dart';

abstract class OTPState extends Equatable {
  const OTPState();
  @override
  List<Object?> get props => [];
}

class OTPInitialState extends OTPState {}

class OTPLoadingState extends OTPState {}

class OTPSuccessState extends OTPState {
  final String email;

  OTPSuccessState({
    required this.email
  });

  @override
  List<Object?> get props => [email];
}

class OTPFailureState extends OTPState {
  final String error;
  OTPFailureState({
    required this.error
  });

  @override
  List<Object?> get props => [error];
}


abstract class VerifyOTPState extends Equatable {
  const VerifyOTPState();
  @override
  List<Object?> get props => [];
}
class VerifyOTPInitialState extends VerifyOTPState {}

class VerifyOTPLoadingState extends VerifyOTPState {}

class VerifyOTPSuccessState extends VerifyOTPState {}

class VerifyOTPFailureState extends VerifyOTPState {
  final String error;

  VerifyOTPFailureState({
    required this.error
  });

  @override
  List<Object?> get props => [error];

}


abstract class ResetPasswordState extends Equatable{
  const ResetPasswordState();
  @override
  List<Object?> get props => [];

}


class ResetPasswordInitialState extends ResetPasswordState {}

class ResetPasswordLoadingState extends ResetPasswordState {}

class ResetPasswordSuccessState extends ResetPasswordState {}

class ResetPasswordFailureState extends ResetPasswordState {
  final String error;

  ResetPasswordFailureState({
    required this.error
  });

  @override
  List<Object?> get props => [error];

}

