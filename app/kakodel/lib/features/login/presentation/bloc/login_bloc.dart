import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/login_usecase.dart';
import 'login_event.dart';
import 'login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitialState()) {
    // normal login
    on<LoginUserEvent>(
      (event, emit) async {
        final user = event.user;
        emit(const LoginState.loading());
        var result = await serviceLocator<LoginUserUsecase>().loginUser(user);
        result.fold(
          (failure) {
            emit(LoginState.error(failure.message));
          },
          (data) {
            emit(LoginState.loaded(user: data));
          },
        );
      },
    );
    on<LoginUserGoogleEvent>(
      (event, emit) async {
        emit(const LoginState.loading());
        var result =
            await serviceLocator<LoginUserUsecase>().loginUserWithGoogle();
        result.fold(
          (failure) {
            emit(LoginState.error(failure.message));
          },
          (data) {
            emit(LoginState.loaded(user: data));
          },
        );
      },
    );
    on<LoginUserFacebookEvent>(
      (event, emit) async {
        emit(const LoginState.loading());
        var result =
            await serviceLocator<LoginUserUsecase>().loginUserWithFacebook();
        result.fold(
          (failure) {
            emit(LoginState.error(failure.message));
          },
          (data) {
            emit(LoginState.loaded(user: data));
          },
        );
      },
    );
  }
}
