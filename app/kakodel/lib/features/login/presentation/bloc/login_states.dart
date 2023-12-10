import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_model.dart';
part 'login_states.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitialState;
  const factory LoginState.loading() = LoginLoadingState;
  const factory LoginState.error(String message) = LoginErrorState;
  const factory LoginState.loaded({
    required User user,
  }) = LoginLoadedState;
}
