import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/cancel_request.dart';
import '../../domain/usecases/get_request_room.dart';
import 'request_room_event.dart';
import 'request_room_state.dart';

class RequestRoomBloc extends Bloc<RequestRoomEvent, RequestRoomState> {
  RequestRoomBloc() : super(const RequestRoomInitialState()) {
    on<GetRequestRoomsEvent>(
      (event, emit) async {
        emit(const RequestRoomState.loading());
        var result = await serviceLocator<GetRequestRoomsFromServer>()
            .getRequestRoomsFromServer(event.status);
        result.fold(
          (failure) {
            emit(RequestRoomState.error(failure.message));
          },
          (data) {
            emit(RequestRoomState.loaded(requestRoomList: data));
          },
        );
      },
    );
    on<CancelRequestEvent>(
      (event, emit) async {
        var result = await serviceLocator<CancelRequestUseCase>()
            .cancelRequest(event.requestRoom);
        result.fold(
          (failure) {
            emit(RequestRoomState.error(failure.message));
          },
          (data) {
            emit(RequestRoomState.cancelled(data));
          },
        );
        // back to previous state
        debugPrint(event.status);
        var requestRoomResult =
            await serviceLocator<GetRequestRoomsFromServer>()
                .getRequestRoomsFromServer(event.status);
        requestRoomResult.fold(
          (failure) {
            emit(RequestRoomState.error(failure.message));
          },
          (data) {
            emit(RequestRoomState.loaded(requestRoomList: data));
          },
        );
      },
    );
  }
}
