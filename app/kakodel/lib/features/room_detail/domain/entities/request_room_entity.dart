import '../../data/models/room_model.dart';

class RequestRoomEntity {
  final Room room;
  final String description;
  final DateTime startDate;
  final DateTime endDate;

  RequestRoomEntity({
    required this.room,
    required this.description,
    required this.startDate,
    required this.endDate,
  });
}
