import 'package:delmart/features/room_detail/domain/entities/request_room_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_detail_event.freezed.dart';

@freezed
class RoomDetailEvent with _$RoomDetailEvent {
  const factory RoomDetailEvent.getRoomDetail({required int roomId}) =
      GetRoomDetailEvent;
  const factory RoomDetailEvent.requestRoom(
      RequestRoomEntity requestRoomEntity) = RequestRoomEvent;
}
