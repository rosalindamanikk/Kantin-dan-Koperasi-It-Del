import 'package:bloc/bloc.dart';

import '../../../../core/service_locator.dart';
import '../../domain/usecases/get_detail_room.dart';
import '../../domain/usecases/request_room.dart';
import 'room_detail_event.dart';
import 'room_detail_state.dart';

class RoomDetailBloc extends Bloc<RoomDetailEvent, RoomDetailState> {
  RoomDetailBloc() : super(const RoomDetailInitialState()) {
    on<GetRoomDetailEvent>((event, emit) async {
      emit(const RoomDetailLoadingState());
      var result = await serviceLocator<GetRoomDetailFromServer>()
          .getRoomDetailFromServer(roomId: event.roomId);
      result.fold(
        (failure) {
          emit(RoomDetailErrorState(failure.message));
        },
        (data) {
          emit(RoomDetailLoadedState(room: data));
        },
      );
    });
    on<RequestRoomEvent>((event, emit) async {
      emit(const RoomDetailLoadingState());
      var result = await serviceLocator<RequestRoomUseCase>()
          .requestRoom(requestRoomEntity: event.requestRoomEntity);
      result.fold(
        (failure) {
          emit(RoomDetailErrorState(failure.message));
        },
        (data) {
          emit(RoomDetailRequestedState(message: data));
        },
      );
      // back to loaded state
      emit(RoomDetailLoadedState(room: event.requestRoomEntity.room));
    });
  }
}
