import 'package:coordonate_app/features/auth/domain/entities/forgot_password_entity.dart';
import 'package:coordonate_app/features/auth/domain/usecases/forgot_password.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/opt_state.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/otp/otp_event.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class OTPBloc extends Bloc<OTPEvent, OTPState> {

  final SendEmail sendEmail;

  OTPBloc({
    required this.sendEmail
  }) : super(OTPInitialState()) {
    on<ForgotPasswordButtonPressedEvent>((event, emit) async {
      emit(OTPLoadingState());
      final result = await sendEmail.call(ForgotPassword(email: event.email));

      result.fold((error) {
        emit(OTPFailureState(error: error.toString()));
      }, (_) {
        emit(OTPSuccessState(email: event.email));
      });
    });
  }
}

class VerifyOTPBloc extends Bloc<VerifyOTPEvent, VerifyOTPState> {
  final VerifyOTP verifyOTP;

  VerifyOTPBloc({
    required this.verifyOTP
  }) : super(VerifyOTPInitialState()) {
     on<VerifyOTPButtonPressedEvent>((event, emit) async {
      emit(VerifyOTPLoadingState());

      // call use case
      final result = await verifyOTP.call(VerifyOTPParam(email: event.email, otp: event.otp));

      result.fold((error) {
        emit(VerifyOTPFailureState(error: error.toString()));
      }, (_) {
        emit(VerifyOTPSuccessState());
      });
      
    });
  }
}

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPassword resetPassword;

  ResetPasswordBloc({
    required this.resetPassword
  }) : super(ResetPasswordInitialState()) {
    on<ResetPasswordButtonPressedEvent>((event, emit) async {
      final result = await resetPassword.call(ResetPasswordParam(email: event.email, newPassword: event.newPassword));

      result.fold((error) => emit(ResetPasswordFailureState(error: error.toString())), (_) => emit(ResetPasswordSuccessState()));
    });

  }
}