import 'package:coordonate_app/features/auth/auth.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_state.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegister _postRegister;
  final PrefManager _prefManager;
  final PostLogin _postLogin;

  RegisterBloc(
      {required PostRegister postRegister,
      required PrefManager prefManager,
      required PostLogin postLogin})
      : _postRegister = postRegister,
        _prefManager = prefManager,
        _postLogin = postLogin,
        super(RegisterInitialState()) {
    on<RegisterButtonPressedEvent>((event, emit) async {
      emit(RegisterLoadingState());

      final result = await _postRegister.call(RegisterParams(
          email: event.email,
          password: event.password.toString(),
          phoneNumber: event.phoneNumber,
          name: event.name));

      result.fold(
        (error) => emit(RegisterFailureState(error: error.toString())),
        (register) async {
          final result = await _postLogin.call(LoginParams(
              email: "jcole6@dreamville.com", password: "temppasswd"));

          result.fold(
            (error) {
              emit(RegisterFailureState(error: error.toString()));
            },
            (login) {
              _prefManager.isLoggedin = true;
              _prefManager.accessToken = login.accessToken;
              _prefManager.refreshToken = login.refreshToken;
              emit(RegisterSuccessState());
            },
          );
        },
      );
    });
  }
}
