import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../models/credit/credit_model.dart';
import '../models/order/order_model.dart';

abstract class CreditsRemoteDataSource {
  Future<Either<Failure, CreditList>> getCreditsFromServer(String provider);
  Future<Either<Failure, OrderModel>> checkout(
      Credit credit, String paymentMethod);
}

class CreditsRemoteDataSourceImpl extends CreditsRemoteDataSource {
  @override
  Future<Either<Failure, CreditList>> getCreditsFromServer(
      String provider) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/credits?provider=$provider');
      if (response.statusCode == 200) {
        CreditList creditList = [];
        final creditListMap = response.data['data'];
        for (var credit in creditListMap) {
          try {
            creditList.add(Credit.fromJson(credit));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(creditList);
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

  @override
  Future<Either<Failure, OrderModel>> checkout(
      Credit credit, String paymentMethod) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.post('/credits/checkout', data: {
        'description': 'Pembelian Pulsa di DelMart',
        'payment_method': paymentMethod,
        'credit_id': credit.id,
      });
      if (response.statusCode == 200) {
        try {
          final OrderModel order = OrderModel.fromJson(response.data['data']);
          return Right(order);
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
  //
}
