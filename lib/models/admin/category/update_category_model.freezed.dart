// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCategoryRequest _$UpdateCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateCategoryRequest {
  int get id => throw _privateConstructorUsedError;
  String get devKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCategoryRequestCopyWith<UpdateCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoryRequestCopyWith<$Res> {
  factory $UpdateCategoryRequestCopyWith(UpdateCategoryRequest value,
          $Res Function(UpdateCategoryRequest) then) =
      _$UpdateCategoryRequestCopyWithImpl<$Res, UpdateCategoryRequest>;
  @useResult
  $Res call({int id, String devKey, String name});
}

/// @nodoc
class _$UpdateCategoryRequestCopyWithImpl<$Res,
        $Val extends UpdateCategoryRequest>
    implements $UpdateCategoryRequestCopyWith<$Res> {
  _$UpdateCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devKey = null,
    Object? name = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCategoryRequestCopyWith<$Res>
    implements $UpdateCategoryRequestCopyWith<$Res> {
  factory _$$_UpdateCategoryRequestCopyWith(_$_UpdateCategoryRequest value,
          $Res Function(_$_UpdateCategoryRequest) then) =
      __$$_UpdateCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String devKey, String name});
}

/// @nodoc
class __$$_UpdateCategoryRequestCopyWithImpl<$Res>
    extends _$UpdateCategoryRequestCopyWithImpl<$Res, _$_UpdateCategoryRequest>
    implements _$$_UpdateCategoryRequestCopyWith<$Res> {
  __$$_UpdateCategoryRequestCopyWithImpl(_$_UpdateCategoryRequest _value,
      $Res Function(_$_UpdateCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? devKey = null,
    Object? name = null,
  }) {
    return _then(_$_UpdateCategoryRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCategoryRequest implements _UpdateCategoryRequest {
  const _$_UpdateCategoryRequest(
      {required this.id, required this.devKey, required this.name});

  factory _$_UpdateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCategoryRequestFromJson(json);

  @override
  final int id;
  @override
  final String devKey;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateCategoryRequest(id: $id, devKey: $devKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategoryRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, devKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCategoryRequestCopyWith<_$_UpdateCategoryRequest> get copyWith =>
      __$$_UpdateCategoryRequestCopyWithImpl<_$_UpdateCategoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCategoryRequestToJson(
      this,
    );
  }
}

abstract class _UpdateCategoryRequest implements UpdateCategoryRequest {
  const factory _UpdateCategoryRequest(
      {required final int id,
      required final String devKey,
      required final String name}) = _$_UpdateCategoryRequest;

  factory _UpdateCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateCategoryRequest.fromJson;

  @override
  int get id;
  @override
  String get devKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCategoryRequestCopyWith<_$_UpdateCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCategoryResponse _$UpdateCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateCategoryResponse {
  CategoryData get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCategoryResponseCopyWith<UpdateCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoryResponseCopyWith<$Res> {
  factory $UpdateCategoryResponseCopyWith(UpdateCategoryResponse value,
          $Res Function(UpdateCategoryResponse) then) =
      _$UpdateCategoryResponseCopyWithImpl<$Res, UpdateCategoryResponse>;
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateCategoryResponseCopyWithImpl<$Res,
        $Val extends UpdateCategoryResponse>
    implements $UpdateCategoryResponseCopyWith<$Res> {
  _$UpdateCategoryResponseCopyWithImpl(this._value, this._then);

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
              as CategoryData,
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
  $CategoryDataCopyWith<$Res> get data {
    return $CategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateCategoryResponseCopyWith<$Res>
    implements $UpdateCategoryResponseCopyWith<$Res> {
  factory _$$_UpdateCategoryResponseCopyWith(_$_UpdateCategoryResponse value,
          $Res Function(_$_UpdateCategoryResponse) then) =
      __$$_UpdateCategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UpdateCategoryResponseCopyWithImpl<$Res>
    extends _$UpdateCategoryResponseCopyWithImpl<$Res,
        _$_UpdateCategoryResponse>
    implements _$$_UpdateCategoryResponseCopyWith<$Res> {
  __$$_UpdateCategoryResponseCopyWithImpl(_$_UpdateCategoryResponse _value,
      $Res Function(_$_UpdateCategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_UpdateCategoryResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryData,
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
class _$_UpdateCategoryResponse implements _UpdateCategoryResponse {
  const _$_UpdateCategoryResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCategoryResponseFromJson(json);

  @override
  final CategoryData data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'UpdateCategoryResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategoryResponse &&
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
  _$$_UpdateCategoryResponseCopyWith<_$_UpdateCategoryResponse> get copyWith =>
      __$$_UpdateCategoryResponseCopyWithImpl<_$_UpdateCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCategoryResponseToJson(
      this,
    );
  }
}

abstract class _UpdateCategoryResponse implements UpdateCategoryResponse {
  const factory _UpdateCategoryResponse(
      {required final CategoryData data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_UpdateCategoryResponse;

  factory _UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateCategoryResponse.fromJson;

  @override
  CategoryData get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCategoryResponseCopyWith<_$_UpdateCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
