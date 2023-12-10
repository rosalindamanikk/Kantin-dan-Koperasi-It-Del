import 'package:auto_route/auto_route.dart';

class CategoryProductRoute extends PageRouteInfo {
  const CategoryProductRoute({required List<Object> args})
      : super(
          name,
          path: '/category-product',
          args: args,
        );

  static const String name = 'CategoryProductRoute';
}
