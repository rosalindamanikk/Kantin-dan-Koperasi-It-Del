import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/request_room/request_room_model.dart';
import '../repository/request_room_repository.dart';

class GetRequestRoomsFromServer {
  Future<Either<Failure, RequestRoomList>> getRequestRoomsFromServer(
      String status) {
    return serviceLocator<RequestRoomRepository>()
        .getRequestRoomsFromServer(status);
  }
}
