import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../data/models/product_model.dart';
import '../repository/product_detail_repository.dart';

class GetDetailProductFromServer {
  Future<Either<Failure, Product>> getDetailProductFromServer(
      {required int productId}) async {
    return serviceLocator<ProductDetailRepository>()
        .getDetailProductFromServer(productId: productId);
  }
}
