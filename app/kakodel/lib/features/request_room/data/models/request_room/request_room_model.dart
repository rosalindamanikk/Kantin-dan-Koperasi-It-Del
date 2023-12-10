import 'package:freezed_annotation/freezed_annotation.dart';

import '../room/room_model.dart';
part 'request_room_model.freezed.dart';
part 'request_room_model.g.dart';

typedef RequestRoomList = List<RequestRoom>;

@freezed
class RequestRoom with _$RequestRoom {
  const factory RequestRoom({
    required int id,
    required Room room,
    required String description,
    required String status,
    required String startDate,
    required String endDate,
    required String createdAt,
    required String updatedAt,
  }) = _RequestRoom;

  factory RequestRoom.fromJson(Map<String, dynamic> json) =>
      _$RequestRoomFromJson(json);
}
