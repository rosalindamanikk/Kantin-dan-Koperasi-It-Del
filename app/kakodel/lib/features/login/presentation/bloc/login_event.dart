import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/user_model.dart';
part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onLoginTapped({required User user}) = LoginUserEvent;
  const factory LoginEvent.onGoogleLoginTapped() = LoginUserGoogleEvent;
  const factory LoginEvent.onFacebookLoginTapped() = LoginUserFacebookEvent;
}
