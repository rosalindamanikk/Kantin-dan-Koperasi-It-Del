import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/room_model.dart';

part 'room_detail_state.freezed.dart';

@freezed
class RoomDetailState with _$RoomDetailState {
  const factory RoomDetailState.initial() = RoomDetailInitialState;
  const factory RoomDetailState.loading() = RoomDetailLoadingState;
  const factory RoomDetailState.error(String message) = RoomDetailErrorState;
  const factory RoomDetailState.loadedState({
    required Room room,
  }) = RoomDetailLoadedState;
  const factory RoomDetailState.requestedState({
    required String message,
  }) = RoomDetailRequestedState;
}
