import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import './../models/product_model.dart';
import '../../domain/repository/product_detail_repository.dart';
import '../datasource/product_detail_remote_source.dart';

class ProductDetailRepositoryImpl extends ProductDetailRepository {
  @override
  Future<Either<Failure, Product>> getDetailProductFromServer(
      {required int productId}) async {
    return serviceLocator<DetailProductRemoteDataSource>()
        .getDetailProductFromServer(productId: productId);
  }

  @override
  Future<Either<Failure, String>> addToCart(
      {required Product product, required int quantity}) {
    return serviceLocator<DetailProductRemoteDataSource>()
        .addToCart(product: product, quantity: quantity);
  }
}
