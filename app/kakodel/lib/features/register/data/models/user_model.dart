import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String nik,
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String phone,
    @Default('') String avatar,
    @Default('') String token,
  }) = _User;
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
