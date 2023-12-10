import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_model.freezed.dart';
part 'credit_model.g.dart';

typedef CreditList = List<Credit>;

@freezed
class Credit with _$Credit {
  factory Credit({
    required int id,
    required String provider,
    required String nominal,
    required double price,
  }) = _Credit;

  factory Credit.fromJson(Map<String, Object?> json) => _$CreditFromJson(json);
}
