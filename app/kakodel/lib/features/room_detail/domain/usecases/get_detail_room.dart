import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/room_model.dart';
import '../repository/room_detail_repository.dart';

class GetRoomDetailFromServer {
  Future<Either<Failure, Room>> getRoomDetailFromServer(
      {required int roomId}) async {
    return serviceLocator<RoomDetailRepository>()
        .getRoomDetailFromServer(roomId: roomId);
  }
}
