// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProductRequest _$UpdateProductRequestFromJson(Map<String, dynamic> json) {
  return _UpdateProductRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateProductRequest {
  String get devKey => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get imageBase64 => throw _privateConstructorUsedError;
  int get currencyId => throw _privateConstructorUsedError;
  String get productVideoLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProductRequestCopyWith<UpdateProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProductRequestCopyWith<$Res> {
  factory $UpdateProductRequestCopyWith(UpdateProductRequest value,
          $Res Function(UpdateProductRequest) then) =
      _$UpdateProductRequestCopyWithImpl<$Res, UpdateProductRequest>;
  @useResult
  $Res call(
      {String devKey,
      int id,
      int categoryId,
      String name,
      String description,
      int price,
      String imageBase64,
      int currencyId,
      String productVideoLink});
}

/// @nodoc
class _$UpdateProductRequestCopyWithImpl<$Res,
        $Val extends UpdateProductRequest>
    implements $UpdateProductRequestCopyWith<$Res> {
  _$UpdateProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageBase64 = null,
    Object? currencyId = null,
    Object? productVideoLink = null,
  }) {
    return _then(_value.copyWith(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageBase64: null == imageBase64
          ? _value.imageBase64
          : imageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      productVideoLink: null == productVideoLink
          ? _value.productVideoLink
          : productVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProductRequestCopyWith<$Res>
    implements $UpdateProductRequestCopyWith<$Res> {
  factory _$$_UpdateProductRequestCopyWith(_$_UpdateProductRequest value,
          $Res Function(_$_UpdateProductRequest) then) =
      __$$_UpdateProductRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String devKey,
      int id,
      int categoryId,
      String name,
      String description,
      int price,
      String imageBase64,
      int currencyId,
      String productVideoLink});
}

/// @nodoc
class __$$_UpdateProductRequestCopyWithImpl<$Res>
    extends _$UpdateProductRequestCopyWithImpl<$Res, _$_UpdateProductRequest>
    implements _$$_UpdateProductRequestCopyWith<$Res> {
  __$$_UpdateProductRequestCopyWithImpl(_$_UpdateProductRequest _value,
      $Res Function(_$_UpdateProductRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageBase64 = null,
    Object? currencyId = null,
    Object? productVideoLink = null,
  }) {
    return _then(_$_UpdateProductRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageBase64: null == imageBase64
          ? _value.imageBase64
          : imageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
      productVideoLink: null == productVideoLink
          ? _value.productVideoLink
          : productVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProductRequest implements _UpdateProductRequest {
  const _$_UpdateProductRequest(
      {this.devKey = Endpoints.devKey,
      required this.id,
      required this.categoryId,
      required this.name,
      required this.description,
      required this.price,
      required this.imageBase64,
      required this.currencyId,
      required this.productVideoLink});

  factory _$_UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProductRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;
  @override
  final int id;
  @override
  final int categoryId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String imageBase64;
  @override
  final int currencyId;
  @override
  final String productVideoLink;

  @override
  String toString() {
    return 'UpdateProductRequest(devKey: $devKey, id: $id, categoryId: $categoryId, name: $name, description: $description, price: $price, imageBase64: $imageBase64, currencyId: $currencyId, productVideoLink: $productVideoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProductRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageBase64, imageBase64) ||
                other.imageBase64 == imageBase64) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.productVideoLink, productVideoLink) ||
                other.productVideoLink == productVideoLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, id, categoryId, name,
      description, price, imageBase64, currencyId, productVideoLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProductRequestCopyWith<_$_UpdateProductRequest> get copyWith =>
      __$$_UpdateProductRequestCopyWithImpl<_$_UpdateProductRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProductRequestToJson(
      this,
    );
  }
}

abstract class _UpdateProductRequest implements UpdateProductRequest {
  const factory _UpdateProductRequest(
      {final String devKey,
      required final int id,
      required final int categoryId,
      required final String name,
      required final String description,
      required final int price,
      required final String imageBase64,
      required final int currencyId,
      required final String productVideoLink}) = _$_UpdateProductRequest;

  factory _UpdateProductRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateProductRequest.fromJson;

  @override
  String get devKey;
  @override
  int get id;
  @override
  int get categoryId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get imageBase64;
  @override
  int get currencyId;
  @override
  String get productVideoLink;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProductRequestCopyWith<_$_UpdateProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateProductResponse _$UpdateProductResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProductResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateProductResponse {
  Product get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProductResponseCopyWith<UpdateProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProductResponseCopyWith<$Res> {
  factory $UpdateProductResponseCopyWith(UpdateProductResponse value,
          $Res Function(UpdateProductResponse) then) =
      _$UpdateProductResponseCopyWithImpl<$Res, UpdateProductResponse>;
  @useResult
  $Res call({Product data, int result, String message, bool isSuccessful});

  $ProductCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateProductResponseCopyWithImpl<$Res,
        $Val extends UpdateProductResponse>
    implements $UpdateProductResponseCopyWith<$Res> {
  _$UpdateProductResponseCopyWithImpl(this._value, this._then);

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
              as Product,
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
  $ProductCopyWith<$Res> get data {
    return $ProductCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateProductResponseCopyWith<$Res>
    implements $UpdateProductResponseCopyWith<$Res> {
  factory _$$_UpdateProductResponseCopyWith(_$_UpdateProductResponse value,
          $Res Function(_$_UpdateProductResponse) then) =
      __$$_UpdateProductResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product data, int result, String message, bool isSuccessful});

  @override
  $ProductCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateProductResponseCopyWithImpl<$Res>
    extends _$UpdateProductResponseCopyWithImpl<$Res, _$_UpdateProductResponse>
    implements _$$_UpdateProductResponseCopyWith<$Res> {
  __$$_UpdateProductResponseCopyWithImpl(_$_UpdateProductResponse _value,
      $Res Function(_$_UpdateProductResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_UpdateProductResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Product,
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
class _$_UpdateProductResponse implements _UpdateProductResponse {
  const _$_UpdateProductResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_UpdateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProductResponseFromJson(json);

  @override
  final Product data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'UpdateProductResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProductResponse &&
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
  _$$_UpdateProductResponseCopyWith<_$_UpdateProductResponse> get copyWith =>
      __$$_UpdateProductResponseCopyWithImpl<_$_UpdateProductResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProductResponseToJson(
      this,
    );
  }
}

abstract class _UpdateProductResponse implements UpdateProductResponse {
  const factory _UpdateProductResponse(
      {required final Product data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_UpdateProductResponse;

  factory _UpdateProductResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateProductResponse.fromJson;

  @override
  Product get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProductResponseCopyWith<_$_UpdateProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
