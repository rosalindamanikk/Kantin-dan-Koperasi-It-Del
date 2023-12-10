import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/product_model.dart';
part 'product_detail_state.freezed.dart';

@freezed
abstract class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = ProductDetailInitialState;
  const factory ProductDetailState.loading() = ProductDetailLoadingState;
  const factory ProductDetailState.error(String message) =
      ProductDetailErrorState;
  const factory ProductDetailState.loaded({
    required Product product,
  }) = ProductDetailLoadedState;

  const factory ProductDetailState.addedToCart({required String message}) =
      ProductDetailAddedToCartState;
}
