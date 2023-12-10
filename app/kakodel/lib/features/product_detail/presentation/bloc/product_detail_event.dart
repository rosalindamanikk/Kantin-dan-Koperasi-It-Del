import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/product_model.dart';
part 'product_detail_event.freezed.dart';

@freezed
abstract class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.getData({required int productId}) =
      GetDetailProductEvent;
  const factory ProductDetailEvent.onAddToCartTapped(
      {required Product product, required int quantity}) = AddToCartEvent;
}
