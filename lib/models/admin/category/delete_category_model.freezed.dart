// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteCategoryRequest _$DeleteCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteCategoryRequest {
  int get id => throw _privateConstructorUsedError;
  String get devKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCategoryRequestCopyWith<DeleteCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCategoryRequestCopyWith<$Res> {
  factory $DeleteCategoryRequestCopyWith(DeleteCategoryRequest value,
          $Res Function(DeleteCategoryRequest) then) =
      _$DeleteCategoryRequestCopyWithImpl<$Res, DeleteCategoryRequest>;
  @useResult
  $Res call({int id, String devKey});
}

/// @nodoc
class _$DeleteCategoryRequestCopyWithImpl<$Res,
        $Val extends DeleteCategoryRequest>
    implements $DeleteCategoryRequestCopyWith<$Res> {
  _$DeleteCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devKey = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteCategoryRequestCopyWith<$Res>
    implements $DeleteCategoryRequestCopyWith<$Res> {
  factory _$$_DeleteCategoryRequestCopyWith(_$_DeleteCategoryRequest value,
          $Res Function(_$_DeleteCategoryRequest) then) =
      __$$_DeleteCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String devKey});
}

/// @nodoc
class __$$_DeleteCategoryRequestCopyWithImpl<$Res>
    extends _$DeleteCategoryRequestCopyWithImpl<$Res, _$_DeleteCategoryRequest>
    implements _$$_DeleteCategoryRequestCopyWith<$Res> {
  __$$_DeleteCategoryRequestCopyWithImpl(_$_DeleteCategoryRequest _value,
      $Res Function(_$_DeleteCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devKey = null,
  }) {
    return _then(_$_DeleteCategoryRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteCategoryRequest implements _DeleteCategoryRequest {
  const _$_DeleteCategoryRequest(
      {required this.id, this.devKey = Endpoints.devKey});

  factory _$_DeleteCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteCategoryRequestFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String devKey;

  @override
  String toString() {
    return 'DeleteCategoryRequest(id: $id, devKey: $devKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategoryRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.devKey, devKey) || other.devKey == devKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, devKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCategoryRequestCopyWith<_$_DeleteCategoryRequest> get copyWith =>
      __$$_DeleteCategoryRequestCopyWithImpl<_$_DeleteCategoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteCategoryRequestToJson(
      this,
    );
  }
}

abstract class _DeleteCategoryRequest implements DeleteCategoryRequest {
  const factory _DeleteCategoryRequest(
      {required final int id, final String devKey}) = _$_DeleteCategoryRequest;

  factory _DeleteCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteCategoryRequest.fromJson;

  @override
  int get id;
  @override
  String get devKey;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCategoryRequestCopyWith<_$_DeleteCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteCategoryResponse _$DeleteCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteCategoryResponse {
  bool get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCategoryResponseCopyWith<DeleteCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCategoryResponseCopyWith<$Res> {
  factory $DeleteCategoryResponseCopyWith(DeleteCategoryResponse value,
          $Res Function(DeleteCategoryResponse) then) =
      _$DeleteCategoryResponseCopyWithImpl<$Res, DeleteCategoryResponse>;
  @useResult
  $Res call({bool data, int result, String message, bool isSuccessful});
}

/// @nodoc
class _$DeleteCategoryResponseCopyWithImpl<$Res,
        $Val extends DeleteCategoryResponse>
    implements $DeleteCategoryResponseCopyWith<$Res> {
  _$DeleteCategoryResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeleteCategoryResponseCopyWith<$Res>
    implements $DeleteCategoryResponseCopyWith<$Res> {
  factory _$$_DeleteCategoryResponseCopyWith(_$_DeleteCategoryResponse value,
          $Res Function(_$_DeleteCategoryResponse) then) =
      __$$_DeleteCategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool data, int result, String message, bool isSuccessful});
}

/// @nodoc
class __$$_DeleteCategoryResponseCopyWithImpl<$Res>
    extends _$DeleteCategoryResponseCopyWithImpl<$Res,
        _$_DeleteCategoryResponse>
    implements _$$_DeleteCategoryResponseCopyWith<$Res> {
  __$$_DeleteCategoryResponseCopyWithImpl(_$_DeleteCategoryResponse _value,
      $Res Function(_$_DeleteCategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_DeleteCategoryResponse(
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
class _$_DeleteCategoryResponse implements _DeleteCategoryResponse {
  const _$_DeleteCategoryResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteCategoryResponseFromJson(json);

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
    return 'DeleteCategoryResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategoryResponse &&
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
  _$$_DeleteCategoryResponseCopyWith<_$_DeleteCategoryResponse> get copyWith =>
      __$$_DeleteCategoryResponseCopyWithImpl<_$_DeleteCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteCategoryResponseToJson(
      this,
    );
  }
}

abstract class _DeleteCategoryResponse implements DeleteCategoryResponse {
  const factory _DeleteCategoryResponse(
      {required final bool data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_DeleteCategoryResponse;

  factory _DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteCategoryResponse.fromJson;

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
  _$$_DeleteCategoryResponseCopyWith<_$_DeleteCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
