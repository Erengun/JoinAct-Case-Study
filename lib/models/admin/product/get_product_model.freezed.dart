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
  List<Product> get products => throw _privateConstructorUsedError;
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
  $Res call(
      {List<Product> products, int result, String message, bool isSuccessful});
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
    Object? products = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
}

/// @nodoc
abstract class _$$_GetProductsResponseCopyWith<$Res>
    implements $GetProductsResponseCopyWith<$Res> {
  factory _$$_GetProductsResponseCopyWith(_$_GetProductsResponse value,
          $Res Function(_$_GetProductsResponse) then) =
      __$$_GetProductsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products, int result, String message, bool isSuccessful});
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
    Object? products = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_GetProductsResponse(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
      {required final List<Product> products,
      required this.result,
      required this.message,
      required this.isSuccessful})
      : _products = products;

  factory _$_GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetProductsResponseFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'GetProductsResponse(products: $products, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsResponse &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      result,
      message,
      isSuccessful);

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
      {required final List<Product> products,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_GetProductsResponse;

  factory _GetProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetProductsResponse.fromJson;

  @override
  List<Product> get products;
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
