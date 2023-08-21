import 'package:coordonate_app/features/auth/domain/usecases/post_login.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/login/login_state.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PostLogin _postLogin;
  final PrefManager _prefManager;

  LoginBloc({required PostLogin postLogin, required PrefManager prefManager})
      : _postLogin = postLogin,
        _prefManager = prefManager,
        super(LoginInitialState()) {
    on<LoginButtonPressedEvent>(
        (LoginButtonPressedEvent event, Emitter<LoginState> emit) async {
      emit(LoginLoadingState());

      final result = await _postLogin
          .call(LoginParams(email: event.email, password: event.password));

      result.fold(
        (error) => emit(LoginFailureState(error: error.toString())),
        (login) {
          _prefManager.isLoggedin = true;
          _prefManager.accessToken = login.accessToken;
          _prefManager.refreshToken = login.refreshToken;
          print(_prefManager.accessToken);
          emit(LoginSuccessState());
        },
      );
    });
  }
}
