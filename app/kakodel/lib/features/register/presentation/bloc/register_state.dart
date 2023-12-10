import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_model.dart';
part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitialState;
  const factory RegisterState.loading() = RegisterLoadingState;
  const factory RegisterState.error(String message) = RegisterErrorState;
  const factory RegisterState.loaded({
    required User user,
  }) = RegisterLoadedState;
}
