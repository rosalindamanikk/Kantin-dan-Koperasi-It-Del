import 'package:delmart/features/room/data/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/room/room_model.dart';

part 'room_state.freezed.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomInitialState;
  const factory RoomState.loading() = RoomLoadingState;
  const factory RoomState.error(String message) = RoomErrorState;
  const factory RoomState.loadedState(
      {required RoomList roomList, required User user}) = RoomLoadedState;
}
