
import 'package:coordonate_app/features/auth/data/models/forgot_password_response.dart';
import 'package:coordonate_app/features/auth/domain/entities/forgot_password_entity.dart';

class ForgotPasswordModel extends ForgotPassword {

  ForgotPasswordModel({
    required String email
  }): super(email: email);

  Map<String, dynamic> toJson() {
    return {
      'email': email
    };
  }
}


class VerifyOTPParamModel extends VerifyOTPParam {

  VerifyOTPParamModel({
    required String email,
    required int otp
  }) : super(email: email, otp: otp);

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'otp': otp
    };
  }

  // factory VerifyOTPParamModel.fromJson(Map<String, dynamic> json) {
  //   return ForgotPasswordResponseModel(message: json['message']);
  // }
}

class ResetPasswordParamModel extends ResetPasswordParam {

  ResetPasswordParamModel({
    required String email,
    required String newPassword
  }) : super(email: email, newPassword: newPassword);

    Map<String, dynamic> toJson() {
    return {
      'email': email,
      'newPassword': newPassword
    };
  }


}