// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrdersRequest _$GetOrdersRequestFromJson(Map<String, dynamic> json) {
  return _GetOrdersRequest.fromJson(json);
}

/// @nodoc
mixin _$GetOrdersRequest {
  String get devKey => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrdersRequestCopyWith<GetOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersRequestCopyWith<$Res> {
  factory $GetOrdersRequestCopyWith(
          GetOrdersRequest value, $Res Function(GetOrdersRequest) then) =
      _$GetOrdersRequestCopyWithImpl<$Res, GetOrdersRequest>;
  @useResult
  $Res call({String devKey, int userId});
}

/// @nodoc
class _$GetOrdersRequestCopyWithImpl<$Res, $Val extends GetOrdersRequest>
    implements $GetOrdersRequestCopyWith<$Res> {
  _$GetOrdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? userId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetOrdersRequestCopyWith<$Res>
    implements $GetOrdersRequestCopyWith<$Res> {
  factory _$$_GetOrdersRequestCopyWith(
          _$_GetOrdersRequest value, $Res Function(_$_GetOrdersRequest) then) =
      __$$_GetOrdersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey, int userId});
}

/// @nodoc
class __$$_GetOrdersRequestCopyWithImpl<$Res>
    extends _$GetOrdersRequestCopyWithImpl<$Res, _$_GetOrdersRequest>
    implements _$$_GetOrdersRequestCopyWith<$Res> {
  __$$_GetOrdersRequestCopyWithImpl(
      _$_GetOrdersRequest _value, $Res Function(_$_GetOrdersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? userId = null,
  }) {
    return _then(_$_GetOrdersRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOrdersRequest implements _GetOrdersRequest {
  const _$_GetOrdersRequest(
      {this.devKey = Endpoints.devKey, required this.userId});

  factory _$_GetOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetOrdersRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;
  @override
  final int userId;

  @override
  String toString() {
    return 'GetOrdersRequest(devKey: $devKey, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrdersRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrdersRequestCopyWith<_$_GetOrdersRequest> get copyWith =>
      __$$_GetOrdersRequestCopyWithImpl<_$_GetOrdersRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOrdersRequestToJson(
      this,
    );
  }
}

abstract class _GetOrdersRequest implements GetOrdersRequest {
  const factory _GetOrdersRequest(
      {final String devKey, required final int userId}) = _$_GetOrdersRequest;

  factory _GetOrdersRequest.fromJson(Map<String, dynamic> json) =
      _$_GetOrdersRequest.fromJson;

  @override
  String get devKey;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_GetOrdersRequestCopyWith<_$_GetOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOrdersResponse _$GetOrdersResponseFromJson(Map<String, dynamic> json) {
  return _GetOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$GetOrdersResponse {
  OrderData get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrdersResponseCopyWith<GetOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersResponseCopyWith<$Res> {
  factory $GetOrdersResponseCopyWith(
          GetOrdersResponse value, $Res Function(GetOrdersResponse) then) =
      _$GetOrdersResponseCopyWithImpl<$Res, GetOrdersResponse>;
  @useResult
  $Res call({OrderData data, int result, String message, bool isSuccessful});

  $OrderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetOrdersResponseCopyWithImpl<$Res, $Val extends GetOrdersResponse>
    implements $GetOrdersResponseCopyWith<$Res> {
  _$GetOrdersResponseCopyWithImpl(this._value, this._then);

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
              as OrderData,
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
  $OrderDataCopyWith<$Res> get data {
    return $OrderDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetOrdersResponseCopyWith<$Res>
    implements $GetOrdersResponseCopyWith<$Res> {
  factory _$$_GetOrdersResponseCopyWith(_$_GetOrdersResponse value,
          $Res Function(_$_GetOrdersResponse) then) =
      __$$_GetOrdersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderData data, int result, String message, bool isSuccessful});

  @override
  $OrderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetOrdersResponseCopyWithImpl<$Res>
    extends _$GetOrdersResponseCopyWithImpl<$Res, _$_GetOrdersResponse>
    implements _$$_GetOrdersResponseCopyWith<$Res> {
  __$$_GetOrdersResponseCopyWithImpl(
      _$_GetOrdersResponse _value, $Res Function(_$_GetOrdersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_GetOrdersResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData,
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
class _$_GetOrdersResponse implements _GetOrdersResponse {
  const _$_GetOrdersResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_GetOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetOrdersResponseFromJson(json);

  @override
  final OrderData data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'GetOrdersResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrdersResponse &&
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
  _$$_GetOrdersResponseCopyWith<_$_GetOrdersResponse> get copyWith =>
      __$$_GetOrdersResponseCopyWithImpl<_$_GetOrdersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOrdersResponseToJson(
      this,
    );
  }
}

abstract class _GetOrdersResponse implements GetOrdersResponse {
  const factory _GetOrdersResponse(
      {required final OrderData data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_GetOrdersResponse;

  factory _GetOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_GetOrdersResponse.fromJson;

  @override
  OrderData get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_GetOrdersResponseCopyWith<_$_GetOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
