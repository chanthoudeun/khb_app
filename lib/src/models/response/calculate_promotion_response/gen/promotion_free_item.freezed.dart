// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../promotion_free_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionFreeItem _$PromotionFreeItemFromJson(Map<String, dynamic> json) {
  return _PromotionFreeItem.fromJson(json);
}

/// @nodoc
mixin _$PromotionFreeItem {
  int? get qty => throw _privateConstructorUsedError;
  set qty(int? value) => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  set point(int? value) => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  set discount(int? value) => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  set type(String? value) => throw _privateConstructorUsedError;
  bool? get isFreePurchaseItem => throw _privateConstructorUsedError;
  set isFreePurchaseItem(bool? value) => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  set productId(int? value) => throw _privateConstructorUsedError;
  List<int>? get productIds => throw _privateConstructorUsedError;
  set productIds(List<int>? value) => throw _privateConstructorUsedError;
  double? get unitPrice => throw _privateConstructorUsedError;
  set unitPrice(double? value) => throw _privateConstructorUsedError;
  double? get discountPrice => throw _privateConstructorUsedError;
  set discountPrice(double? value) => throw _privateConstructorUsedError;
  double? get discountRate => throw _privateConstructorUsedError;
  set discountRate(double? value) => throw _privateConstructorUsedError;
  MinMultiply? get minMultiply => throw _privateConstructorUsedError;
  set minMultiply(MinMultiply? value) => throw _privateConstructorUsedError;
  int? get totalQty => throw _privateConstructorUsedError;
  set totalQty(int? value) => throw _privateConstructorUsedError;
  bool? get isPromotion => throw _privateConstructorUsedError;
  set isPromotion(bool? value) => throw _privateConstructorUsedError;
  int? get promotionId => throw _privateConstructorUsedError;
  set promotionId(int? value) => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;
  set unitType(String? value) => throw _privateConstructorUsedError;
  String? get operation => throw _privateConstructorUsedError;
  set operation(String? value) => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  set productName(String? value) => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  set product(Product? value) => throw _privateConstructorUsedError;
  double? get totalDeliveredQty => throw _privateConstructorUsedError;
  set totalDeliveredQty(double? value) => throw _privateConstructorUsedError;
  double? get totalRemainQty => throw _privateConstructorUsedError;
  set totalRemainQty(double? value) => throw _privateConstructorUsedError;
  bool? get isInventory => throw _privateConstructorUsedError;
  set isInventory(bool? value) => throw _privateConstructorUsedError;
  ProductDetail? get productDetail => throw _privateConstructorUsedError;
  set productDetail(ProductDetail? value) => throw _privateConstructorUsedError;

  /// Serializes this PromotionFreeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionFreeItemCopyWith<PromotionFreeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionFreeItemCopyWith<$Res> {
  factory $PromotionFreeItemCopyWith(
          PromotionFreeItem value, $Res Function(PromotionFreeItem) then) =
      _$PromotionFreeItemCopyWithImpl<$Res, PromotionFreeItem>;
  @useResult
  $Res call(
      {int? qty,
      int? point,
      int? discount,
      String? type,
      bool? isFreePurchaseItem,
      int? productId,
      List<int>? productIds,
      double? unitPrice,
      double? discountPrice,
      double? discountRate,
      MinMultiply? minMultiply,
      int? totalQty,
      bool? isPromotion,
      int? promotionId,
      String? unitType,
      String? operation,
      String? productName,
      Product? product,
      double? totalDeliveredQty,
      double? totalRemainQty,
      bool? isInventory,
      ProductDetail? productDetail});

  $MinMultiplyCopyWith<$Res>? get minMultiply;
  $ProductCopyWith<$Res>? get product;
  $ProductDetailCopyWith<$Res>? get productDetail;
}

/// @nodoc
class _$PromotionFreeItemCopyWithImpl<$Res, $Val extends PromotionFreeItem>
    implements $PromotionFreeItemCopyWith<$Res> {
  _$PromotionFreeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? point = freezed,
    Object? discount = freezed,
    Object? type = freezed,
    Object? isFreePurchaseItem = freezed,
    Object? productId = freezed,
    Object? productIds = freezed,
    Object? unitPrice = freezed,
    Object? discountPrice = freezed,
    Object? discountRate = freezed,
    Object? minMultiply = freezed,
    Object? totalQty = freezed,
    Object? isPromotion = freezed,
    Object? promotionId = freezed,
    Object? unitType = freezed,
    Object? operation = freezed,
    Object? productName = freezed,
    Object? product = freezed,
    Object? totalDeliveredQty = freezed,
    Object? totalRemainQty = freezed,
    Object? isInventory = freezed,
    Object? productDetail = freezed,
  }) {
    return _then(_value.copyWith(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isFreePurchaseItem: freezed == isFreePurchaseItem
          ? _value.isFreePurchaseItem
          : isFreePurchaseItem // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double?,
      minMultiply: freezed == minMultiply
          ? _value.minMultiply
          : minMultiply // ignore: cast_nullable_to_non_nullable
              as MinMultiply?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      isPromotion: freezed == isPromotion
          ? _value.isPromotion
          : isPromotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      totalDeliveredQty: freezed == totalDeliveredQty
          ? _value.totalDeliveredQty
          : totalDeliveredQty // ignore: cast_nullable_to_non_nullable
              as double?,
      totalRemainQty: freezed == totalRemainQty
          ? _value.totalRemainQty
          : totalRemainQty // ignore: cast_nullable_to_non_nullable
              as double?,
      isInventory: freezed == isInventory
          ? _value.isInventory
          : isInventory // ignore: cast_nullable_to_non_nullable
              as bool?,
      productDetail: freezed == productDetail
          ? _value.productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as ProductDetail?,
    ) as $Val);
  }

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinMultiplyCopyWith<$Res>? get minMultiply {
    if (_value.minMultiply == null) {
      return null;
    }

    return $MinMultiplyCopyWith<$Res>(_value.minMultiply!, (value) {
      return _then(_value.copyWith(minMultiply: value) as $Val);
    });
  }

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDetailCopyWith<$Res>? get productDetail {
    if (_value.productDetail == null) {
      return null;
    }

    return $ProductDetailCopyWith<$Res>(_value.productDetail!, (value) {
      return _then(_value.copyWith(productDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionFreeItemImplCopyWith<$Res>
    implements $PromotionFreeItemCopyWith<$Res> {
  factory _$$PromotionFreeItemImplCopyWith(_$PromotionFreeItemImpl value,
          $Res Function(_$PromotionFreeItemImpl) then) =
      __$$PromotionFreeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? qty,
      int? point,
      int? discount,
      String? type,
      bool? isFreePurchaseItem,
      int? productId,
      List<int>? productIds,
      double? unitPrice,
      double? discountPrice,
      double? discountRate,
      MinMultiply? minMultiply,
      int? totalQty,
      bool? isPromotion,
      int? promotionId,
      String? unitType,
      String? operation,
      String? productName,
      Product? product,
      double? totalDeliveredQty,
      double? totalRemainQty,
      bool? isInventory,
      ProductDetail? productDetail});

  @override
  $MinMultiplyCopyWith<$Res>? get minMultiply;
  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $ProductDetailCopyWith<$Res>? get productDetail;
}

/// @nodoc
class __$$PromotionFreeItemImplCopyWithImpl<$Res>
    extends _$PromotionFreeItemCopyWithImpl<$Res, _$PromotionFreeItemImpl>
    implements _$$PromotionFreeItemImplCopyWith<$Res> {
  __$$PromotionFreeItemImplCopyWithImpl(_$PromotionFreeItemImpl _value,
      $Res Function(_$PromotionFreeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? point = freezed,
    Object? discount = freezed,
    Object? type = freezed,
    Object? isFreePurchaseItem = freezed,
    Object? productId = freezed,
    Object? productIds = freezed,
    Object? unitPrice = freezed,
    Object? discountPrice = freezed,
    Object? discountRate = freezed,
    Object? minMultiply = freezed,
    Object? totalQty = freezed,
    Object? isPromotion = freezed,
    Object? promotionId = freezed,
    Object? unitType = freezed,
    Object? operation = freezed,
    Object? productName = freezed,
    Object? product = freezed,
    Object? totalDeliveredQty = freezed,
    Object? totalRemainQty = freezed,
    Object? isInventory = freezed,
    Object? productDetail = freezed,
  }) {
    return _then(_$PromotionFreeItemImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isFreePurchaseItem: freezed == isFreePurchaseItem
          ? _value.isFreePurchaseItem
          : isFreePurchaseItem // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double?,
      minMultiply: freezed == minMultiply
          ? _value.minMultiply
          : minMultiply // ignore: cast_nullable_to_non_nullable
              as MinMultiply?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      isPromotion: freezed == isPromotion
          ? _value.isPromotion
          : isPromotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      operation: freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      totalDeliveredQty: freezed == totalDeliveredQty
          ? _value.totalDeliveredQty
          : totalDeliveredQty // ignore: cast_nullable_to_non_nullable
              as double?,
      totalRemainQty: freezed == totalRemainQty
          ? _value.totalRemainQty
          : totalRemainQty // ignore: cast_nullable_to_non_nullable
              as double?,
      isInventory: freezed == isInventory
          ? _value.isInventory
          : isInventory // ignore: cast_nullable_to_non_nullable
              as bool?,
      productDetail: freezed == productDetail
          ? _value.productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as ProductDetail?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$PromotionFreeItemImpl implements _PromotionFreeItem {
  _$PromotionFreeItemImpl(
      {this.qty,
      this.point,
      this.discount,
      this.type,
      this.isFreePurchaseItem,
      this.productId,
      this.productIds,
      this.unitPrice,
      this.discountPrice,
      this.discountRate,
      this.minMultiply,
      this.totalQty,
      this.isPromotion,
      this.promotionId,
      this.unitType,
      this.operation,
      this.productName,
      this.product,
      this.totalDeliveredQty,
      this.totalRemainQty,
      this.isInventory,
      this.productDetail});

  factory _$PromotionFreeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionFreeItemImplFromJson(json);

  @override
  int? qty;
  @override
  int? point;
  @override
  int? discount;
  @override
  String? type;
  @override
  bool? isFreePurchaseItem;
  @override
  int? productId;
  @override
  List<int>? productIds;
  @override
  double? unitPrice;
  @override
  double? discountPrice;
  @override
  double? discountRate;
  @override
  MinMultiply? minMultiply;
  @override
  int? totalQty;
  @override
  bool? isPromotion;
  @override
  int? promotionId;
  @override
  String? unitType;
  @override
  String? operation;
  @override
  String? productName;
  @override
  Product? product;
  @override
  double? totalDeliveredQty;
  @override
  double? totalRemainQty;
  @override
  bool? isInventory;
  @override
  ProductDetail? productDetail;

  @override
  String toString() {
    return 'PromotionFreeItem(qty: $qty, point: $point, discount: $discount, type: $type, isFreePurchaseItem: $isFreePurchaseItem, productId: $productId, productIds: $productIds, unitPrice: $unitPrice, discountPrice: $discountPrice, discountRate: $discountRate, minMultiply: $minMultiply, totalQty: $totalQty, isPromotion: $isPromotion, promotionId: $promotionId, unitType: $unitType, operation: $operation, productName: $productName, product: $product, totalDeliveredQty: $totalDeliveredQty, totalRemainQty: $totalRemainQty, isInventory: $isInventory, productDetail: $productDetail)';
  }

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionFreeItemImplCopyWith<_$PromotionFreeItemImpl> get copyWith =>
      __$$PromotionFreeItemImplCopyWithImpl<_$PromotionFreeItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionFreeItemImplToJson(
      this,
    );
  }
}

abstract class _PromotionFreeItem implements PromotionFreeItem {
  factory _PromotionFreeItem(
      {int? qty,
      int? point,
      int? discount,
      String? type,
      bool? isFreePurchaseItem,
      int? productId,
      List<int>? productIds,
      double? unitPrice,
      double? discountPrice,
      double? discountRate,
      MinMultiply? minMultiply,
      int? totalQty,
      bool? isPromotion,
      int? promotionId,
      String? unitType,
      String? operation,
      String? productName,
      Product? product,
      double? totalDeliveredQty,
      double? totalRemainQty,
      bool? isInventory,
      ProductDetail? productDetail}) = _$PromotionFreeItemImpl;

  factory _PromotionFreeItem.fromJson(Map<String, dynamic> json) =
      _$PromotionFreeItemImpl.fromJson;

  @override
  int? get qty;
  set qty(int? value);
  @override
  int? get point;
  set point(int? value);
  @override
  int? get discount;
  set discount(int? value);
  @override
  String? get type;
  set type(String? value);
  @override
  bool? get isFreePurchaseItem;
  set isFreePurchaseItem(bool? value);
  @override
  int? get productId;
  set productId(int? value);
  @override
  List<int>? get productIds;
  set productIds(List<int>? value);
  @override
  double? get unitPrice;
  set unitPrice(double? value);
  @override
  double? get discountPrice;
  set discountPrice(double? value);
  @override
  double? get discountRate;
  set discountRate(double? value);
  @override
  MinMultiply? get minMultiply;
  set minMultiply(MinMultiply? value);
  @override
  int? get totalQty;
  set totalQty(int? value);
  @override
  bool? get isPromotion;
  set isPromotion(bool? value);
  @override
  int? get promotionId;
  set promotionId(int? value);
  @override
  String? get unitType;
  set unitType(String? value);
  @override
  String? get operation;
  set operation(String? value);
  @override
  String? get productName;
  set productName(String? value);
  @override
  Product? get product;
  set product(Product? value);
  @override
  double? get totalDeliveredQty;
  set totalDeliveredQty(double? value);
  @override
  double? get totalRemainQty;
  set totalRemainQty(double? value);
  @override
  bool? get isInventory;
  set isInventory(bool? value);
  @override
  ProductDetail? get productDetail;
  set productDetail(ProductDetail? value);

  /// Create a copy of PromotionFreeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionFreeItemImplCopyWith<_$PromotionFreeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
