// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../purchase_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseOrderResponse _$PurchaseOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _PurchaseOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderResponse {
  List<PurchaseOrderItem>? get data => throw _privateConstructorUsedError;
  set data(List<PurchaseOrderItem>? value) =>
      throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  set metadata(Metadata? value) => throw _privateConstructorUsedError;

  /// Serializes this PurchaseOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseOrderResponseCopyWith<PurchaseOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderResponseCopyWith<$Res> {
  factory $PurchaseOrderResponseCopyWith(PurchaseOrderResponse value,
          $Res Function(PurchaseOrderResponse) then) =
      _$PurchaseOrderResponseCopyWithImpl<$Res, PurchaseOrderResponse>;
  @useResult
  $Res call({List<PurchaseOrderItem>? data, Metadata? metadata});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PurchaseOrderResponseCopyWithImpl<$Res,
        $Val extends PurchaseOrderResponse>
    implements $PurchaseOrderResponseCopyWith<$Res> {
  _$PurchaseOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PurchaseOrderItem>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ) as $Val);
  }

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PurchaseOrderResponseImplCopyWith<$Res>
    implements $PurchaseOrderResponseCopyWith<$Res> {
  factory _$$PurchaseOrderResponseImplCopyWith(
          _$PurchaseOrderResponseImpl value,
          $Res Function(_$PurchaseOrderResponseImpl) then) =
      __$$PurchaseOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PurchaseOrderItem>? data, Metadata? metadata});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PurchaseOrderResponseImplCopyWithImpl<$Res>
    extends _$PurchaseOrderResponseCopyWithImpl<$Res,
        _$PurchaseOrderResponseImpl>
    implements _$$PurchaseOrderResponseImplCopyWith<$Res> {
  __$$PurchaseOrderResponseImplCopyWithImpl(_$PurchaseOrderResponseImpl _value,
      $Res Function(_$PurchaseOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PurchaseOrderResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PurchaseOrderItem>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$PurchaseOrderResponseImpl implements _PurchaseOrderResponse {
  _$PurchaseOrderResponseImpl({this.data, this.metadata});

  factory _$PurchaseOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderResponseImplFromJson(json);

  @override
  List<PurchaseOrderItem>? data;
  @override
  Metadata? metadata;

  @override
  String toString() {
    return 'PurchaseOrderResponse(data: $data, metadata: $metadata)';
  }

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderResponseImplCopyWith<_$PurchaseOrderResponseImpl>
      get copyWith => __$$PurchaseOrderResponseImplCopyWithImpl<
          _$PurchaseOrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderResponse implements PurchaseOrderResponse {
  factory _PurchaseOrderResponse(
      {List<PurchaseOrderItem>? data,
      Metadata? metadata}) = _$PurchaseOrderResponseImpl;

  factory _PurchaseOrderResponse.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderResponseImpl.fromJson;

  @override
  List<PurchaseOrderItem>? get data;
  set data(List<PurchaseOrderItem>? value);
  @override
  Metadata? get metadata;
  set metadata(Metadata? value);

  /// Create a copy of PurchaseOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseOrderResponseImplCopyWith<_$PurchaseOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
