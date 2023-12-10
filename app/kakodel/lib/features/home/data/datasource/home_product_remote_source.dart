import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../models/products/product_model.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<Failure, ProductList>> getProductFromServer();
}

class ProductsRemoteDataSourceImpl extends ProductsRemoteDataSource {
  @override
  Future<Either<Failure, ProductList>> getProductFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/products');
      if (response.statusCode == 200) {
        ProductList productList = [];
        final productListMap = response.data['data'];
        for (var product in productListMap) {
          try {
            productList.add(Product.fromJson(product));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(productList);
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
  //
}
