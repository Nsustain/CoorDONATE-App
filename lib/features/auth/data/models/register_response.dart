import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/data/models/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required String status,
    required Data data,
  }) = _RegisterResponse;

  const RegisterResponse._();

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

}
