// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) {
  return _OrderDetail.fromJson(json);
}

/// @nodoc
mixin _$OrderDetail {
  Product get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res, OrderDetail>;
  @useResult
  $Res call({Product product, int quantity});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res, $Val extends OrderDetail>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$_OrderDetailCopyWith(
          _$_OrderDetail value, $Res Function(_$_OrderDetail) then) =
      __$$_OrderDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, int quantity});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderDetailCopyWithImpl<$Res>
    extends _$OrderDetailCopyWithImpl<$Res, _$_OrderDetail>
    implements _$$_OrderDetailCopyWith<$Res> {
  __$$_OrderDetailCopyWithImpl(
      _$_OrderDetail _value, $Res Function(_$_OrderDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_OrderDetail(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetail implements _OrderDetail {
  _$_OrderDetail({required this.product, required this.quantity});

  factory _$_OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailFromJson(json);

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'OrderDetail(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetail &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      __$$_OrderDetailCopyWithImpl<_$_OrderDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailToJson(
      this,
    );
  }
}

abstract class _OrderDetail implements OrderDetail {
  factory _OrderDetail(
      {required final Product product,
      required final int quantity}) = _$_OrderDetail;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) =
      _$_OrderDetail.fromJson;

  @override
  Product get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailCopyWith<_$_OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
