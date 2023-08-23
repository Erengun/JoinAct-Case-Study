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

GetCategoriesResponse _$GetCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesResponse {
  List<Category>? get categories => throw _privateConstructorUsedError;
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
  $Res call(
      {List<Category>? categories,
      int result,
      String message,
      bool isSuccessful});
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
    Object? categories = freezed,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
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
abstract class _$$_GetCategoryResponseCopyWith<$Res>
    implements $GetCategoriesResponseCopyWith<$Res> {
  factory _$$_GetCategoryResponseCopyWith(_$_GetCategoryResponse value,
          $Res Function(_$_GetCategoryResponse) then) =
      __$$_GetCategoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category>? categories,
      int result,
      String message,
      bool isSuccessful});
}

/// @nodoc
class __$$_GetCategoryResponseCopyWithImpl<$Res>
    extends _$GetCategoriesResponseCopyWithImpl<$Res, _$_GetCategoryResponse>
    implements _$$_GetCategoryResponseCopyWith<$Res> {
  __$$_GetCategoryResponseCopyWithImpl(_$_GetCategoryResponse _value,
      $Res Function(_$_GetCategoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_GetCategoryResponse(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
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
class _$_GetCategoryResponse implements _GetCategoryResponse {
  const _$_GetCategoryResponse(
      {required final List<Category>? categories,
      required this.result,
      required this.message,
      required this.isSuccessful})
      : _categories = categories;

  factory _$_GetCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetCategoryResponseFromJson(json);

  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'GetCategoriesResponse(categories: $categories, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoryResponse &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      result,
      message,
      isSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoryResponseCopyWith<_$_GetCategoryResponse> get copyWith =>
      __$$_GetCategoryResponseCopyWithImpl<_$_GetCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCategoryResponseToJson(
      this,
    );
  }
}

abstract class _GetCategoryResponse implements GetCategoriesResponse {
  const factory _GetCategoryResponse(
      {required final List<Category>? categories,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_GetCategoryResponse;

  factory _GetCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCategoryResponse.fromJson;

  @override
  List<Category>? get categories;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoryResponseCopyWith<_$_GetCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
