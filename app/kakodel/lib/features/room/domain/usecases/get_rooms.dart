import 'package:dartz/dartz.dart';
import 'package:delmart/core/service_locator.dart';

import '../../../../core/failure.dart';

import '../../data/models/room/room_model.dart';
import '../repository/room_repository.dart';

class GetRoomsFromServer {
  Future<Either<Failure, RoomList>> getRoomsFromServer() {
    return serviceLocator<RoomRepository>().getRoomsFromServer();
  }
}
