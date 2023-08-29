// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) {
  return _CreateOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderRequest {
  String get devKey => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  List<int> get productIds => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderRequestCopyWith<CreateOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderRequestCopyWith<$Res> {
  factory $CreateOrderRequestCopyWith(
          CreateOrderRequest value, $Res Function(CreateOrderRequest) then) =
      _$CreateOrderRequestCopyWithImpl<$Res, CreateOrderRequest>;
  @useResult
  $Res call({String devKey, int userId, List<int> productIds, String time});
}

/// @nodoc
class _$CreateOrderRequestCopyWithImpl<$Res, $Val extends CreateOrderRequest>
    implements $CreateOrderRequestCopyWith<$Res> {
  _$CreateOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? userId = null,
    Object? productIds = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOrderRequestCopyWith<$Res>
    implements $CreateOrderRequestCopyWith<$Res> {
  factory _$$_CreateOrderRequestCopyWith(_$_CreateOrderRequest value,
          $Res Function(_$_CreateOrderRequest) then) =
      __$$_CreateOrderRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey, int userId, List<int> productIds, String time});
}

/// @nodoc
class __$$_CreateOrderRequestCopyWithImpl<$Res>
    extends _$CreateOrderRequestCopyWithImpl<$Res, _$_CreateOrderRequest>
    implements _$$_CreateOrderRequestCopyWith<$Res> {
  __$$_CreateOrderRequestCopyWithImpl(
      _$_CreateOrderRequest _value, $Res Function(_$_CreateOrderRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? userId = null,
    Object? productIds = null,
    Object? time = null,
  }) {
    return _then(_$_CreateOrderRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrderRequest implements _CreateOrderRequest {
  const _$_CreateOrderRequest(
      {this.devKey = Endpoints.devKey,
      required this.userId,
      required final List<int> productIds,
      required this.time})
      : _productIds = productIds;

  factory _$_CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrderRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;
  @override
  final int userId;
  final List<int> _productIds;
  @override
  List<int> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  final String time;

  @override
  String toString() {
    return 'CreateOrderRequest(devKey: $devKey, userId: $userId, productIds: $productIds, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, userId,
      const DeepCollectionEquality().hash(_productIds), time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderRequestCopyWith<_$_CreateOrderRequest> get copyWith =>
      __$$_CreateOrderRequestCopyWithImpl<_$_CreateOrderRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderRequestToJson(
      this,
    );
  }
}

abstract class _CreateOrderRequest implements CreateOrderRequest {
  const factory _CreateOrderRequest(
      {final String devKey,
      required final int userId,
      required final List<int> productIds,
      required final String time}) = _$_CreateOrderRequest;

  factory _CreateOrderRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderRequest.fromJson;

  @override
  String get devKey;
  @override
  int get userId;
  @override
  List<int> get productIds;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderRequestCopyWith<_$_CreateOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) {
  return _CreateOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponse {
  Order get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderResponseCopyWith<CreateOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseCopyWith<$Res> {
  factory $CreateOrderResponseCopyWith(
          CreateOrderResponse value, $Res Function(CreateOrderResponse) then) =
      _$CreateOrderResponseCopyWithImpl<$Res, CreateOrderResponse>;
  @useResult
  $Res call({Order data, int result, String message, bool isSuccessful});

  $OrderCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateOrderResponseCopyWithImpl<$Res, $Val extends CreateOrderResponse>
    implements $CreateOrderResponseCopyWith<$Res> {
  _$CreateOrderResponseCopyWithImpl(this._value, this._then);

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
              as Order,
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
  $OrderCopyWith<$Res> get data {
    return $OrderCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateOrderResponseCopyWith<$Res>
    implements $CreateOrderResponseCopyWith<$Res> {
  factory _$$_CreateOrderResponseCopyWith(_$_CreateOrderResponse value,
          $Res Function(_$_CreateOrderResponse) then) =
      __$$_CreateOrderResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Order data, int result, String message, bool isSuccessful});

  @override
  $OrderCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateOrderResponseCopyWithImpl<$Res>
    extends _$CreateOrderResponseCopyWithImpl<$Res, _$_CreateOrderResponse>
    implements _$$_CreateOrderResponseCopyWith<$Res> {
  __$$_CreateOrderResponseCopyWithImpl(_$_CreateOrderResponse _value,
      $Res Function(_$_CreateOrderResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_CreateOrderResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Order,
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
class _$_CreateOrderResponse implements _CreateOrderResponse {
  const _$_CreateOrderResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrderResponseFromJson(json);

  @override
  final Order data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'CreateOrderResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderResponse &&
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
  _$$_CreateOrderResponseCopyWith<_$_CreateOrderResponse> get copyWith =>
      __$$_CreateOrderResponseCopyWithImpl<_$_CreateOrderResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderResponseToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponse implements CreateOrderResponse {
  const factory _CreateOrderResponse(
      {required final Order data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_CreateOrderResponse;

  factory _CreateOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateOrderResponse.fromJson;

  @override
  Order get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderResponseCopyWith<_$_CreateOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
