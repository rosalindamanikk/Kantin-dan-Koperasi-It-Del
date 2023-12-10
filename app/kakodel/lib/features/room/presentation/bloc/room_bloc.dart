import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../data/models/user/user_model.dart';
import '../../domain/repository/room_repository.dart';
import '../../domain/usecases/get_local_user.dart';
import 'room_event.dart';
import 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(const RoomInitialState()) {
    on<GetDataEvent>(
      (event, emit) async {
        var userResult = await serviceLocator<GetLocalUserUsecase>()
            .getUserFromLocalStorage();
        var result =
            await serviceLocator<RoomRepository>().getRoomsFromServer();
        result.fold(
          (failure) {
            emit(RoomState.error(failure.message));
          },
          (data) {
            emit(
              RoomState.loadedState(
                roomList: data,
                user: userResult.getOrElse(
                  () => User(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
