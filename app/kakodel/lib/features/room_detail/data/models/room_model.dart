import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

typedef RoomList = List<Room>;

@freezed
class Room with _$Room {
  factory Room({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String image,
    @Default('') String status,
  }) = _Room;

  factory Room.fromJson(Map<String, Object?> json) => _$RoomFromJson(json);
}
