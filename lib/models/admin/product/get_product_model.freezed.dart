// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductsRequest _$GetProductsRequestFromJson(Map<String, dynamic> json) {
  return _GetProductsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetProductsRequest {
  String get devKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsRequestCopyWith<GetProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsRequestCopyWith<$Res> {
  factory $GetProductsRequestCopyWith(
          GetProductsRequest value, $Res Function(GetProductsRequest) then) =
      _$GetProductsRequestCopyWithImpl<$Res, GetProductsRequest>;
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class _$GetProductsRequestCopyWithImpl<$Res, $Val extends GetProductsRequest>
    implements $GetProductsRequestCopyWith<$Res> {
  _$GetProductsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
  }) {
    return _then(_value.copyWith(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetProductsRequestCopyWith<$Res>
    implements $GetProductsRequestCopyWith<$Res> {
  factory _$$_GetProductsRequestCopyWith(_$_GetProductsRequest value,
          $Res Function(_$_GetProductsRequest) then) =
      __$$_GetProductsRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class __$$_GetProductsRequestCopyWithImpl<$Res>
    extends _$GetProductsRequestCopyWithImpl<$Res, _$_GetProductsRequest>
    implements _$$_GetProductsRequestCopyWith<$Res> {
  __$$_GetProductsRequestCopyWithImpl(
      _$_GetProductsRequest _value, $Res Function(_$_GetProductsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
  }) {
    return _then(_$_GetProductsRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProductsRequest implements _GetProductsRequest {
  const _$_GetProductsRequest({this.devKey = Endpoints.devKey});

  factory _$_GetProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetProductsRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;

  @override
  String toString() {
    return 'GetProductsRequest(devKey: $devKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsRequestCopyWith<_$_GetProductsRequest> get copyWith =>
      __$$_GetProductsRequestCopyWithImpl<_$_GetProductsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProductsRequestToJson(
      this,
    );
  }
}

abstract class _GetProductsRequest implements GetProductsRequest {
  const factory _GetProductsRequest({final String devKey}) =
      _$_GetProductsRequest;

  factory _GetProductsRequest.fromJson(Map<String, dynamic> json) =
      _$_GetProductsRequest.fromJson;

  @override
  String get devKey;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductsRequestCopyWith<_$_GetProductsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GetProductsResponse _$GetProductsResponseFromJson(Map<String, dynamic> json) {
  return _GetProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProductsResponse {
  ProductData get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsResponseCopyWith<GetProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsResponseCopyWith<$Res> {
  factory $GetProductsResponseCopyWith(
          GetProductsResponse value, $Res Function(GetProductsResponse) then) =
      _$GetProductsResponseCopyWithImpl<$Res, GetProductsResponse>;
  @useResult
  $Res call({ProductData data, int result, String message, bool isSuccessful});

  $ProductDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetProductsResponseCopyWithImpl<$Res, $Val extends GetProductsResponse>
    implements $GetProductsResponseCopyWith<$Res> {
  _$GetProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res> get data {
    return $ProductDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetProductsResponseCopyWith<$Res>
    implements $GetProductsResponseCopyWith<$Res> {
  factory _$$_GetProductsResponseCopyWith(_$_GetProductsResponse value,
          $Res Function(_$_GetProductsResponse) then) =
      __$$_GetProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductData data, int result, String message, bool isSuccessful});

  @override
  $ProductDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetProductsResponseCopyWithImpl<$Res>
    extends _$GetProductsResponseCopyWithImpl<$Res, _$_GetProductsResponse>
    implements _$$_GetProductsResponseCopyWith<$Res> {
  __$$_GetProductsResponseCopyWithImpl(_$_GetProductsResponse _value,
      $Res Function(_$_GetProductsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_GetProductsResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetProductsResponse implements _GetProductsResponse {
  const _$_GetProductsResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetProductsResponseFromJson(json);

  @override
  final ProductData data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'GetProductsResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsResponse &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, result, message, isSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsResponseCopyWith<_$_GetProductsResponse> get copyWith =>
      __$$_GetProductsResponseCopyWithImpl<_$_GetProductsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetProductsResponseToJson(
      this,
    );
  }
}

abstract class _GetProductsResponse implements GetProductsResponse {
  const factory _GetProductsResponse(
      {required final ProductData data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_GetProductsResponse;

  factory _GetProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetProductsResponse.fromJson;

  @override
  ProductData get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_GetProductsResponseCopyWith<_$_GetProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$_ProductDataCopyWith(
          _$_ProductData value, $Res Function(_$_ProductData) then) =
      __$$_ProductDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$_ProductDataCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$_ProductData>
    implements _$$_ProductDataCopyWith<$Res> {
  __$$_ProductDataCopyWithImpl(
      _$_ProductData _value, $Res Function(_$_ProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_ProductData(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductData implements _ProductData {
  const _$_ProductData({required final List<Product> products})
      : _products = products;

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductData(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductData &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      __$$_ProductDataCopyWithImpl<_$_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData({required final List<Product> products}) =
      _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}
