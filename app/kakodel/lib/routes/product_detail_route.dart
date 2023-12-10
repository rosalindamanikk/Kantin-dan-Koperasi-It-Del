import 'package:auto_route/auto_route.dart';

class ProductDetailRoute extends PageRouteInfo {
  const ProductDetailRoute({required List<Object> args})
      : super(
          name,
          path: '/product-detail',
          args: args,
        );

  static const String name = 'ProductDetailRoute';
}
