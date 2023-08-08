import 'package:coordonate_app/features/auth/domain/usecases/post_register.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_event.dart';
import 'package:coordonate_app/features/auth/presentation/bloc/register/register_state.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final PostRegister _postRegister;
  final PrefManager _prefManager;

  RegisterBloc(
      {required PostRegister postRegister, required PrefManager prefManager})
      : _postRegister = postRegister,
        _prefManager = prefManager,
        super(RegisterInitialState()) {
    on<RegisterButtonPressedEvent>((event, emit) async {
      emit(RegisterLoadingState());

      final result = await _postRegister.call(RegisterParams(
          email: event.email,
          password: event.password,
          phoneNumber: event.phoneNumber,
          name: event.name));

      result.fold(
        (error) => emit(RegisterFailureState(error: error.toString())),
        (register) {
          _prefManager.isLoggedin = true;
          _prefManager.token = register.token;
          emit(RegisterSuccessState());
        },
      );
    });
  }
}
