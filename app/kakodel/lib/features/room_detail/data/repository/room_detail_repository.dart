import 'package:dartz/dartz.dart';
import 'package:delmart/features/room_detail/data/models/room_model.dart';
import 'package:delmart/features/room_detail/domain/entities/request_room_entity.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../domain/repository/room_detail_repository.dart';
import '../datasource/room_detail_remote_source.dart';

class RoomDetailRepositoryImpl extends RoomDetailRepository {
  @override
  Future<Either<Failure, Room>> getRoomDetailFromServer({required int roomId}) {
    return serviceLocator<RoomDetailRemoteDataSource>()
        .getRoomDetailFromServer(roomId: roomId);
  }

  @override
  Future<Either<Failure, String>> requestRoom(
      {required RequestRoomEntity requestRoomEntity}) {
    return serviceLocator<RoomDetailRemoteDataSource>()
        .requestRoom(requestRoomEntity);
  }
}
