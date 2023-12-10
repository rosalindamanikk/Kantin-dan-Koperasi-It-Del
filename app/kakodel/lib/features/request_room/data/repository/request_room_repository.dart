import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/request_room/data/datasource/request_room_remote_source.dart';
import 'package:delmart/features/request_room/data/models/request_room/request_room_model.dart';

import 'package:delmart/core/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/request_room_repository.dart';

class RequestRoomRepositoryImpl extends RequestRoomRepository {
  @override
  Future<Either<Failure, RequestRoomList>> getRequestRoomsFromServer(
      String status) {
    return serviceLocator<RequestRoomRemoteDataSource>()
        .getRequestRoomsFromServer(status);
  }

  @override
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom) {
    return serviceLocator<RequestRoomRemoteDataSource>()
        .cancelRequest(requestRoom);
  }
}
