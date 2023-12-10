import 'package:dartz/dartz.dart';
import 'package:delmart/core/request.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../models/request_room/request_room_model.dart';

abstract class RequestRoomRemoteDataSource {
  Future<Either<Failure, RequestRoomList>> getRequestRoomsFromServer(
      String status);
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom);
}

class RequestRoomRemoteDataSourceImpl implements RequestRoomRemoteDataSource {
  final Request request = serviceLocator<Request>();

  @override
  Future<Either<Failure, RequestRoomList>> getRequestRoomsFromServer(
      String status) async {
    try {
      var response = await request.get('/request-rooms?status=$status');
      if (response.statusCode == 200) {
        try {
          final RequestRoomList requestRoomList = [];
          final requestRoomListMap = response.data['data'];
          try {
            for (var item in requestRoomListMap) {
              requestRoomList.add(RequestRoom.fromJson(item));
            }
          } catch (e) {
            debugPrint(e.toString());
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
          return Right(requestRoomList);
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
      } else {
        return Left(
          ConnectionFailure(response.data['message']),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }

  @override
  Future<Either<Failure, String>> cancelRequest(RequestRoom requestRoom) async {
    try {
      var response =
          await request.put('/request-rooms/cancel/${requestRoom.id}');
      if (response.statusCode == 200) {
        return Right(response.data['meta']['message']);
      } else {
        return Left(ConnectionFailure(response.data['meta']['message']));
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
