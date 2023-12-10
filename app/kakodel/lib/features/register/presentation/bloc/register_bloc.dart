import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/register_usecase.dart';
import './register_event.dart';
import './register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterInitialState()) {
    // normal register
    on<RegisterUserEvent>(
      (event, emit) async {
        final user = event.user;
        emit(const RegisterState.loading());
        var result =
            await serviceLocator<RegisterUserUsecase>().registerUser(user);
        result.fold(
          (failure) {
            emit(RegisterState.error(failure.message));
          },
          (data) {
            emit(RegisterState.loaded(user: data));
          },
        );
      },
    );
    // google register
    on<RegisterUserGoogleEvent>(
      (event, emit) async {
        emit(const RegisterState.loading());
        var result = await serviceLocator<RegisterUserUsecase>()
            .registerUserWithGoogle();
        result.fold(
          (failure) {
            emit(RegisterState.error(failure.message));
          },
          (data) {
            emit(RegisterState.loaded(user: data));
          },
        );
      },
    );
    // facebook register
    on<RegisterUserFacebookEvent>(
      (event, emit) async {
        emit(const RegisterState.loading());
        var result = await serviceLocator<RegisterUserUsecase>()
            .registerUserWithFacebook();
        result.fold(
          (failure) {
            emit(RegisterState.error(failure.message));
          },
          (data) {
            emit(RegisterState.loaded(user: data));
          },
        );
      },
    );
  }
}
