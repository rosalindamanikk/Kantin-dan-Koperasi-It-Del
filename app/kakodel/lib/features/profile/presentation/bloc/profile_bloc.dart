import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/repository/profile_repository.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileInitialState()) {
    on<GetUserFromLocalStorageEvent>((event, emit) async {
      emit(const ProfileLoadingState());
      try {
        final result =
            await serviceLocator<ProfileRepository>().getUserFromLocalStorage();
        result.fold(
          (failure) => emit(ProfileErrorState(failure.toString())),
          (data) => emit(ProfileLoadedState(user: data)),
        );
      } catch (e) {
        emit(ProfileErrorState(e.toString()));
      }
    });
    on<LogoutEvent>((event, emit) async {
      emit(const ProfileLoadingState());
      try {
        final result = await serviceLocator<ProfileRepository>().logout();
        result.fold(
          (failure) => emit(ProfileErrorState(failure.toString())),
          (data) => emit(const ProfileLogoutState()),
        );
      } catch (e) {
        emit(ProfileErrorState(e.toString()));
      }
    });
  }
}
