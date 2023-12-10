import 'package:delmart/features/request_room/data/models/request_room/request_room_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_room_state.freezed.dart';

@freezed
class RequestRoomState with _$RequestRoomState {
  const factory RequestRoomState.initial() = RequestRoomInitialState;
  const factory RequestRoomState.loading() = RequestRoomLoadingState;
  const factory RequestRoomState.error(String message) = RequestRoomErrorState;
  const factory RequestRoomState.loaded(
      {required RequestRoomList requestRoomList}) = RequestRoomLoadedState;
  const factory RequestRoomState.cancelled(String message) =
      RequestRoomCancelledState;
}
