import 'package:dartz/dartz.dart';
import 'package:delmart/core/failure.dart';
import 'package:delmart/features/request_room/data/models/request_room/request_room_model.dart';

abstract class RequestRoomRepository {
  Future<Either<Failure, RequestRoomList>> getRequestRoomsFromServer(
      String status);
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom);
}
