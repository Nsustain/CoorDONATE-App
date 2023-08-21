import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_login.freezed.dart';
part 'post_login.g.dart';

class PostLogin extends UseCase<LoginResponseEntity, LoginParams> {
  final AuthRepository _repo;

  PostLogin(this._repo);

  @override
  Future<Either<Failure, LoginResponseEntity>> call(LoginParams params) =>
      _repo.login(params);
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    @Default("") String email,
    @Default("") String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
