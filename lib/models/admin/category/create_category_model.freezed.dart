// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCategoryRequest _$CreateCategoryRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateCategoryRequest {
  String get devKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCategoryRequestCopyWith<CreateCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryRequestCopyWith<$Res> {
  factory $CreateCategoryRequestCopyWith(CreateCategoryRequest value,
          $Res Function(CreateCategoryRequest) then) =
      _$CreateCategoryRequestCopyWithImpl<$Res, CreateCategoryRequest>;
  @useResult
  $Res call({String devKey, String name});
}

/// @nodoc
class _$CreateCategoryRequestCopyWithImpl<$Res,
        $Val extends CreateCategoryRequest>
    implements $CreateCategoryRequestCopyWith<$Res> {
  _$CreateCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_CreateCategoryRequestCopyWith<$Res>
    implements $CreateCategoryRequestCopyWith<$Res> {
  factory _$$_CreateCategoryRequestCopyWith(_$_CreateCategoryRequest value,
          $Res Function(_$_CreateCategoryRequest) then) =
      __$$_CreateCategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey, String name});
}

/// @nodoc
class __$$_CreateCategoryRequestCopyWithImpl<$Res>
    extends _$CreateCategoryRequestCopyWithImpl<$Res, _$_CreateCategoryRequest>
    implements _$$_CreateCategoryRequestCopyWith<$Res> {
  __$$_CreateCategoryRequestCopyWithImpl(_$_CreateCategoryRequest _value,
      $Res Function(_$_CreateCategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? name = null,
  }) {
    return _then(_$_CreateCategoryRequest(
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
class _$_CreateCategoryRequest implements _CreateCategoryRequest {
  const _$_CreateCategoryRequest({required this.devKey, required this.name});

  factory _$_CreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCategoryRequestFromJson(json);

  @override
  final String devKey;
  @override
  final String name;

  @override
  String toString() {
    return 'CreateCategoryRequest(devKey: $devKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCategoryRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCategoryRequestCopyWith<_$_CreateCategoryRequest> get copyWith =>
      __$$_CreateCategoryRequestCopyWithImpl<_$_CreateCategoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCategoryRequestToJson(
      this,
    );
  }
}

abstract class _CreateCategoryRequest implements CreateCategoryRequest {
  const factory _CreateCategoryRequest(
      {required final String devKey,
      required final String name}) = _$_CreateCategoryRequest;

  factory _CreateCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateCategoryRequest.fromJson;

  @override
  String get devKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCategoryRequestCopyWith<_$_CreateCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCategoryResponse _$CreateCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCategoryResponse {
  CategoryData get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCategoryResponseCopyWith<CreateCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCategoryResponseCopyWith<$Res> {
  factory $CreateCategoryResponseCopyWith(CreateCategoryResponse value,
          $Res Function(CreateCategoryResponse) then) =
      _$CreateCategoryResponseCopyWithImpl<$Res, CreateCategoryResponse>;
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateCategoryResponseCopyWithImpl<$Res,
        $Val extends CreateCategoryResponse>
    implements $CreateCategoryResponseCopyWith<$Res> {
  _$CreateCategoryResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateCategoryResponseCopyWith<$Res>
    implements $CreateCategoryResponseCopyWith<$Res> {
  factory _$$_CreateCategoryResponseCopyWith(_$_CreateCategoryResponse value,
          $Res Function(_$_CreateCategoryResponse) then) =
      __$$_CreateCategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateCategoryResponseCopyWithImpl<$Res>
    extends _$CreateCategoryResponseCopyWithImpl<$Res,
        _$_CreateCategoryResponse>
    implements _$$_CreateCategoryResponseCopyWith<$Res> {
  __$$_CreateCategoryResponseCopyWithImpl(_$_CreateCategoryResponse _value,
      $Res Function(_$_CreateCategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_CreateCategoryResponse(
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
class _$_CreateCategoryResponse implements _CreateCategoryResponse {
  const _$_CreateCategoryResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCategoryResponseFromJson(json);

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
    return 'CreateCategoryResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCategoryResponse &&
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
  _$$_CreateCategoryResponseCopyWith<_$_CreateCategoryResponse> get copyWith =>
      __$$_CreateCategoryResponseCopyWithImpl<_$_CreateCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCategoryResponseToJson(
      this,
    );
  }
}

abstract class _CreateCategoryResponse implements CreateCategoryResponse {
  const factory _CreateCategoryResponse(
      {required final CategoryData data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_CreateCategoryResponse;

  factory _CreateCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateCategoryResponse.fromJson;

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
  _$$_CreateCategoryResponseCopyWith<_$_CreateCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDataCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$_CategoryDataCopyWith(
          _$_CategoryData value, $Res Function(_$_CategoryData) then) =
      __$$_CategoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CategoryDataCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$_CategoryData>
    implements _$$_CategoryDataCopyWith<$Res> {
  __$$_CategoryDataCopyWithImpl(
      _$_CategoryData _value, $Res Function(_$_CategoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CategoryData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryData implements _CategoryData {
  const _$_CategoryData({required this.id, required this.name});

  factory _$_CategoryData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryData(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      __$$_CategoryDataCopyWithImpl<_$_CategoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDataToJson(
      this,
    );
  }
}

abstract class _CategoryData implements CategoryData {
  const factory _CategoryData(
      {required final int id, required final String name}) = _$_CategoryData;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$_CategoryData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
