import 'package:coordonate_app/features/auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    String? id,
    String? token,
    String? error,
  }) = _LoginResponse;

  const LoginResponse._();

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Login toEntity() => Login(token: token);
}
