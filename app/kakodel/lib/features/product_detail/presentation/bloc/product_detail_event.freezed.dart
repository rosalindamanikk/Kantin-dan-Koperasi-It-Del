// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) getData,
    required TResult Function(Product product, int quantity) onAddToCartTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? getData,
    TResult? Function(Product product, int quantity)? onAddToCartTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? getData,
    TResult Function(Product product, int quantity)? onAddToCartTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailProductEvent value) getData,
    required TResult Function(AddToCartEvent value) onAddToCartTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailProductEvent value)? getData,
    TResult? Function(AddToCartEvent value)? onAddToCartTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailProductEvent value)? getData,
    TResult Function(AddToCartEvent value)? onAddToCartTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
          ProductDetailEvent value, $Res Function(ProductDetailEvent) then) =
      _$ProductDetailEventCopyWithImpl<$Res, ProductDetailEvent>;
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res, $Val extends ProductDetailEvent>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDetailProductEventCopyWith<$Res> {
  factory _$$GetDetailProductEventCopyWith(_$GetDetailProductEvent value,
          $Res Function(_$GetDetailProductEvent) then) =
      __$$GetDetailProductEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$GetDetailProductEventCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$GetDetailProductEvent>
    implements _$$GetDetailProductEventCopyWith<$Res> {
  __$$GetDetailProductEventCopyWithImpl(_$GetDetailProductEvent _value,
      $Res Function(_$GetDetailProductEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GetDetailProductEvent(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailProductEvent implements GetDetailProductEvent {
  const _$GetDetailProductEvent({required this.productId});

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductDetailEvent.getData(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailProductEvent &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailProductEventCopyWith<_$GetDetailProductEvent> get copyWith =>
      __$$GetDetailProductEventCopyWithImpl<_$GetDetailProductEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) getData,
    required TResult Function(Product product, int quantity) onAddToCartTapped,
  }) {
    return getData(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? getData,
    TResult? Function(Product product, int quantity)? onAddToCartTapped,
  }) {
    return getData?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? getData,
    TResult Function(Product product, int quantity)? onAddToCartTapped,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailProductEvent value) getData,
    required TResult Function(AddToCartEvent value) onAddToCartTapped,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailProductEvent value)? getData,
    TResult? Function(AddToCartEvent value)? onAddToCartTapped,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailProductEvent value)? getData,
    TResult Function(AddToCartEvent value)? onAddToCartTapped,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDetailProductEvent implements ProductDetailEvent {
  const factory GetDetailProductEvent({required final int productId}) =
      _$GetDetailProductEvent;

  int get productId;
  @JsonKey(ignore: true)
  _$$GetDetailProductEventCopyWith<_$GetDetailProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartEventCopyWith<$Res> {
  factory _$$AddToCartEventCopyWith(
          _$AddToCartEvent value, $Res Function(_$AddToCartEvent) then) =
      __$$AddToCartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, int quantity});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddToCartEventCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$AddToCartEvent>
    implements _$$AddToCartEventCopyWith<$Res> {
  __$$AddToCartEventCopyWithImpl(
      _$AddToCartEvent _value, $Res Function(_$AddToCartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddToCartEvent(
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

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddToCartEvent implements AddToCartEvent {
  const _$AddToCartEvent({required this.product, required this.quantity});

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ProductDetailEvent.onAddToCartTapped(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEvent &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventCopyWith<_$AddToCartEvent> get copyWith =>
      __$$AddToCartEventCopyWithImpl<_$AddToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) getData,
    required TResult Function(Product product, int quantity) onAddToCartTapped,
  }) {
    return onAddToCartTapped(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? getData,
    TResult? Function(Product product, int quantity)? onAddToCartTapped,
  }) {
    return onAddToCartTapped?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? getData,
    TResult Function(Product product, int quantity)? onAddToCartTapped,
    required TResult orElse(),
  }) {
    if (onAddToCartTapped != null) {
      return onAddToCartTapped(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDetailProductEvent value) getData,
    required TResult Function(AddToCartEvent value) onAddToCartTapped,
  }) {
    return onAddToCartTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDetailProductEvent value)? getData,
    TResult? Function(AddToCartEvent value)? onAddToCartTapped,
  }) {
    return onAddToCartTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDetailProductEvent value)? getData,
    TResult Function(AddToCartEvent value)? onAddToCartTapped,
    required TResult orElse(),
  }) {
    if (onAddToCartTapped != null) {
      return onAddToCartTapped(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements ProductDetailEvent {
  const factory AddToCartEvent(
      {required final Product product,
      required final int quantity}) = _$AddToCartEvent;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddToCartEventCopyWith<_$AddToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
