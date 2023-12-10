import 'package:delmart/features/request_room/data/models/request_room/request_room_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_room_event.freezed.dart';

@freezed
abstract class RequestRoomEvent with _$RequestRoomEvent {
  const factory RequestRoomEvent.getRequestRoomsFromServer(String status) =
      GetRequestRoomsEvent;
  const factory RequestRoomEvent.cancelRequest(
      String status, RequestRoom requestRoom) = CancelRequestEvent;
}
