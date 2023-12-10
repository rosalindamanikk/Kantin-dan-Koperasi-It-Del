import 'package:dartz/dartz.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:delmart/features/room/data/models/user/user_model.dart';
import 'package:delmart/features/room/domain/repository/room_repository.dart';

import '../../../../core/failure.dart';
import '../datasource/room_remote_source.dart';
import '../datasource/room_user_local_data_source.dart';
import '../models/room/room_model.dart';

class RoomRepositoryImpl extends RoomRepository {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() {
    return serviceLocator<RoomLocalUserDataSource>().getUserFromLocalStorage();
  }

  @override
  Future<Either<Failure, RoomList>> getRoomsFromServer() {
    return serviceLocator<RoomRemoteDataSource>().getRoomsFromServer();
  }
}
