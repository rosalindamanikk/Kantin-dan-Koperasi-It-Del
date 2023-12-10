import 'package:dartz/dartz.dart';
import 'package:delmart/core/request.dart';
import 'package:delmart/core/service_locator.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../models/room/room_model.dart';

abstract class RoomRemoteDataSource {
  Future<Either<Failure, RoomList>> getRoomsFromServer();
}

class RoomRemoteDataSourceImpl implements RoomRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, RoomList>> getRoomsFromServer() async {
    try {
      final response = await request.get('/rooms');
      if (response.statusCode == 200) {
        RoomList roomList = [];
        final roomListMap = response.data['data'];
        for (var room in roomListMap) {
          try {
            roomList.add(Room.fromJson(room));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(roomList);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
