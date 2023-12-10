import 'package:dartz/dartz.dart';
import 'package:delmart/core/failure.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/request_room/data/models/request_room/request_room_model.dart';

import '../repository/request_room_repository.dart';

class CancelRequestUseCase {
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom) {
    return serviceLocator<RequestRoomRepository>().cancelRequest(requestRoom);
  }
}
