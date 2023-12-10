import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/room_model.dart';
import '../entities/request_room_entity.dart';

abstract class RoomDetailRepository {
  Future<Either<Failure, Room>> getRoomDetailFromServer({required int roomId});
  Future<Either<Failure, String>> requestRoom(
      {required RequestRoomEntity requestRoomEntity});
}
