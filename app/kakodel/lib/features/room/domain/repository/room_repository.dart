import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data/models/room/room_model.dart';
import '../../data/models/user/user_model.dart';

abstract class RoomRepository {
  Future<Either<Failure, User>> getUserFromLocalStorage();
  Future<Either<Failure, RoomList>> getRoomsFromServer();
}
