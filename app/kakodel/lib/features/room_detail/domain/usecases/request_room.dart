import 'package:dartz/dartz.dart';
import 'package:delmart/features/room_detail/domain/entities/request_room_entity.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../repository/room_detail_repository.dart';

class RequestRoomUseCase {
  Future<Either<Failure, String>> requestRoom(
      {required RequestRoomEntity requestRoomEntity}) async {
    return serviceLocator<RoomDetailRepository>()
        .requestRoom(requestRoomEntity: requestRoomEntity);
  }
}
