// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteProductRequest _$DeleteProductRequestFromJson(Map<String, dynamic> json) {
  return _DeleteProductRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteProductRequest {
  String get devKey => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProductRequestCopyWith<DeleteProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductRequestCopyWith<$Res> {
  factory $DeleteProductRequestCopyWith(DeleteProductRequest value,
          $Res Function(DeleteProductRequest) then) =
      _$DeleteProductRequestCopyWithImpl<$Res, DeleteProductRequest>;
  @useResult
  $Res call({String devKey, int id});
}

/// @nodoc
class _$DeleteProductRequestCopyWithImpl<$Res,
        $Val extends DeleteProductRequest>
    implements $DeleteProductRequestCopyWith<$Res> {
  _$DeleteProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? id = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteProductRequestCopyWith<$Res>
    implements $DeleteProductRequestCopyWith<$Res> {
  factory _$$_DeleteProductRequestCopyWith(_$_DeleteProductRequest value,
          $Res Function(_$_DeleteProductRequest) then) =
      __$$_DeleteProductRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey, int id});
}

/// @nodoc
class __$$_DeleteProductRequestCopyWithImpl<$Res>
    extends _$DeleteProductRequestCopyWithImpl<$Res, _$_DeleteProductRequest>
    implements _$$_DeleteProductRequestCopyWith<$Res> {
  __$$_DeleteProductRequestCopyWithImpl(_$_DeleteProductRequest _value,
      $Res Function(_$_DeleteProductRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? id = null,
  }) {
    return _then(_$_DeleteProductRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProductRequest implements _DeleteProductRequest {
  const _$_DeleteProductRequest(
      {this.devKey = Endpoints.devKey, required this.id});

  factory _$_DeleteProductRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteProductRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;
  @override
  final int id;

  @override
  String toString() {
    return 'DeleteProductRequest(devKey: $devKey, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProductRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductRequestCopyWith<_$_DeleteProductRequest> get copyWith =>
      __$$_DeleteProductRequestCopyWithImpl<_$_DeleteProductRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteProductRequestToJson(
      this,
    );
  }
}

abstract class _DeleteProductRequest implements DeleteProductRequest {
  const factory _DeleteProductRequest(
      {final String devKey, required final int id}) = _$_DeleteProductRequest;

  factory _DeleteProductRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteProductRequest.fromJson;

  @override
  String get devKey;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteProductRequestCopyWith<_$_DeleteProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteProductResponse _$DeleteProductResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteProductResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteProductResponse {
  bool get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProductResponseCopyWith<DeleteProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductResponseCopyWith<$Res> {
  factory $DeleteProductResponseCopyWith(DeleteProductResponse value,
          $Res Function(DeleteProductResponse) then) =
      _$DeleteProductResponseCopyWithImpl<$Res, DeleteProductResponse>;
  @useResult
  $Res call({bool data, int result, String message, bool isSuccessful});
}

/// @nodoc
class _$DeleteProductResponseCopyWithImpl<$Res,
        $Val extends DeleteProductResponse>
    implements $DeleteProductResponseCopyWith<$Res> {
  _$DeleteProductResponseCopyWithImpl(this._value, this._then);

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
              as bool,
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
abstract class _$$_DeleteProductResponseCopyWith<$Res>
    implements $DeleteProductResponseCopyWith<$Res> {
  factory _$$_DeleteProductResponseCopyWith(_$_DeleteProductResponse value,
          $Res Function(_$_DeleteProductResponse) then) =
      __$$_DeleteProductResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool data, int result, String message, bool isSuccessful});
}

/// @nodoc
class __$$_DeleteProductResponseCopyWithImpl<$Res>
    extends _$DeleteProductResponseCopyWithImpl<$Res, _$_DeleteProductResponse>
    implements _$$_DeleteProductResponseCopyWith<$Res> {
  __$$_DeleteProductResponseCopyWithImpl(_$_DeleteProductResponse _value,
      $Res Function(_$_DeleteProductResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_DeleteProductResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_DeleteProductResponse implements _DeleteProductResponse {
  const _$_DeleteProductResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_DeleteProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteProductResponseFromJson(json);

  @override
  final bool data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'DeleteProductResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProductResponse &&
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
  _$$_DeleteProductResponseCopyWith<_$_DeleteProductResponse> get copyWith =>
      __$$_DeleteProductResponseCopyWithImpl<_$_DeleteProductResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteProductResponseToJson(
      this,
    );
  }
}

abstract class _DeleteProductResponse implements DeleteProductResponse {
  const factory _DeleteProductResponse(
      {required final bool data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_DeleteProductResponse;

  factory _DeleteProductResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteProductResponse.fromJson;

  @override
  bool get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteProductResponseCopyWith<_$_DeleteProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
