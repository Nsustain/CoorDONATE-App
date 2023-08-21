import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';

@freezed
class Register with _$Register {
  const factory Register({required String email, required String password}) = _Register;
  const Register._();
}
