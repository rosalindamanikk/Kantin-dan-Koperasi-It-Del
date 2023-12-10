import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_model.dart';
part 'register_event.freezed.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.onRegisterTapped({required User user}) =
      RegisterUserEvent;
  const factory RegisterEvent.onGoogleRegisterTapped() =
      RegisterUserGoogleEvent;
  const factory RegisterEvent.onFacebookRegisterTapped() =
      RegisterUserFacebookEvent;
}
