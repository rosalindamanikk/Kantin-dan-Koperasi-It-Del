import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_model.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitialState;
  const factory ProfileState.loading() = ProfileLoadingState;
  const factory ProfileState.loaded({required User user}) = ProfileLoadedState;
  const factory ProfileState.error(String message) = ProfileErrorState;
  const factory ProfileState.logout() = ProfileLogoutState;
}
