import '../../data/models/product/product_model.dart';

class ProductCartEntity {
  final int id;
  final Product product;
  int quantity;
  final double price;

  ProductCartEntity({
    required this.id,
    required this.product,
    required this.quantity,
  }) : price = product.price * quantity;
}
