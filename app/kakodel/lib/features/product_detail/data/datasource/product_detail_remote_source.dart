import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import './../models/product_model.dart';
import 'package:flutter/foundation.dart';

abstract class DetailProductRemoteDataSource {
  Future<Either<Failure, Product>> getDetailProductFromServer(
      {required int productId});
  Future<Either<Failure, String>> addToCart(
      {required Product product, required int quantity});
}

class DetailProductRemoteDataSourceImpl extends DetailProductRemoteDataSource {
  final Request request = serviceLocator<Request>();
  @override
  Future<Either<Failure, Product>> getDetailProductFromServer(
      {required int productId}) async {
    try {
      final response = await request.get('/products/$productId');
      if (response.statusCode == 200) {
        try {
          return Right(Product.fromJson(response.data['data']));
        } catch (e) {
          return const Left(
            ParsingFailure('Unable to parse the response'),
          );
        }
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
  Future<Either<Failure, String>> addToCart(
      {required Product product, required int quantity}) async {
    try {
      final response = await request.post(
        '/cart/store',
        data: {
          'product_id': product.id,
          'quantity': quantity,
        },
      );
      try {
        return Right(response.data['meta']['message']);
      } catch (e) {
        return const Left(
          ParsingFailure('Unable to parse the response'),
        );
      }
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
}
