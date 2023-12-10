import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product_model.dart';
part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

typedef OrderDetailList = List<OrderDetail>;

@freezed
class OrderDetail with _$OrderDetail {
  factory OrderDetail({
    required Product product,
    required int quantity,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, Object?> json) =>
      _$OrderDetailFromJson(json);
}
