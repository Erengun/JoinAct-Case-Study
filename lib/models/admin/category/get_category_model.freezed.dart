// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCategoriesRequest _$GetCategoriesRequestFromJson(Map<String, dynamic> json) {
  return _GetCategoriesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesRequest {
  String get devKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesRequestCopyWith<GetCategoriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesRequestCopyWith<$Res> {
  factory $GetCategoriesRequestCopyWith(GetCategoriesRequest value,
          $Res Function(GetCategoriesRequest) then) =
      _$GetCategoriesRequestCopyWithImpl<$Res, GetCategoriesRequest>;
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class _$GetCategoriesRequestCopyWithImpl<$Res,
        $Val extends GetCategoriesRequest>
    implements $GetCategoriesRequestCopyWith<$Res> {
  _$GetCategoriesRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetCategoriesRequestCopyWith<$Res>
    implements $GetCategoriesRequestCopyWith<$Res> {
  factory _$$_GetCategoriesRequestCopyWith(_$_GetCategoriesRequest value,
          $Res Function(_$_GetCategoriesRequest) then) =
      __$$_GetCategoriesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class __$$_GetCategoriesRequestCopyWithImpl<$Res>
    extends _$GetCategoriesRequestCopyWithImpl<$Res, _$_GetCategoriesRequest>
    implements _$$_GetCategoriesRequestCopyWith<$Res> {
  __$$_GetCategoriesRequestCopyWithImpl(_$_GetCategoriesRequest _value,
      $Res Function(_$_GetCategoriesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
  }) {
    return _then(_$_GetCategoriesRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCategoriesRequest implements _GetCategoriesRequest {
  const _$_GetCategoriesRequest({this.devKey = Endpoints.devKey});

  factory _$_GetCategoriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetCategoriesRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;

  @override
  String toString() {
    return 'GetCategoriesRequest(devKey: $devKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoriesRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoriesRequestCopyWith<_$_GetCategoriesRequest> get copyWith =>
      __$$_GetCategoriesRequestCopyWithImpl<_$_GetCategoriesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCategoriesRequestToJson(
      this,
    );
  }
}

abstract class _GetCategoriesRequest implements GetCategoriesRequest {
  const factory _GetCategoriesRequest({final String devKey}) =
      _$_GetCategoriesRequest;

  factory _GetCategoriesRequest.fromJson(Map<String, dynamic> json) =
      _$_GetCategoriesRequest.fromJson;

  @override
  String get devKey;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoriesRequestCopyWith<_$_GetCategoriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCategoriesResponse _$GetCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesResponse {
  CategoryData get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesResponseCopyWith<GetCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesResponseCopyWith<$Res> {
  factory $GetCategoriesResponseCopyWith(GetCategoriesResponse value,
          $Res Function(GetCategoriesResponse) then) =
      _$GetCategoriesResponseCopyWithImpl<$Res, GetCategoriesResponse>;
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetCategoriesResponseCopyWithImpl<$Res,
        $Val extends GetCategoriesResponse>
    implements $GetCategoriesResponseCopyWith<$Res> {
  _$GetCategoriesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetCategoriesResponseCopyWith<$Res>
    implements $GetCategoriesResponseCopyWith<$Res> {
  factory _$$_GetCategoriesResponseCopyWith(_$_GetCategoriesResponse value,
          $Res Function(_$_GetCategoriesResponse) then) =
      __$$_GetCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data, int result, String message, bool isSuccessful});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCategoriesResponseCopyWithImpl<$Res>
    extends _$GetCategoriesResponseCopyWithImpl<$Res, _$_GetCategoriesResponse>
    implements _$$_GetCategoriesResponseCopyWith<$Res> {
  __$$_GetCategoriesResponseCopyWithImpl(_$_GetCategoriesResponse _value,
      $Res Function(_$_GetCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_GetCategoriesResponse(
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
class _$_GetCategoriesResponse implements _GetCategoriesResponse {
  const _$_GetCategoriesResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_GetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetCategoriesResponseFromJson(json);

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
    return 'GetCategoriesResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoriesResponse &&
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
  _$$_GetCategoriesResponseCopyWith<_$_GetCategoriesResponse> get copyWith =>
      __$$_GetCategoriesResponseCopyWithImpl<_$_GetCategoriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _GetCategoriesResponse implements GetCategoriesResponse {
  const factory _GetCategoriesResponse(
      {required final CategoryData data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_GetCategoriesResponse;

  factory _GetCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCategoriesResponse.fromJson;

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
  _$$_GetCategoriesResponseCopyWith<_$_GetCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  List<Category> get categories => throw _privateConstructorUsedError;

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
  $Res call({List<Category> categories});
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
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
  $Res call({List<Category> categories});
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
    Object? categories = null,
  }) {
    return _then(_$_CategoryData(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryData implements _CategoryData {
  const _$_CategoryData({required final List<Category> categories})
      : _categories = categories;

  factory _$_CategoryData.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDataFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryData(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryData &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

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
  const factory _CategoryData({required final List<Category> categories}) =
      _$_CategoryData;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$_CategoryData.fromJson;

  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
