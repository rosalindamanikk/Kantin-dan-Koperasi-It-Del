import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required int id,
    required String code,
    required double total,
    required String paymentMethod,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}
