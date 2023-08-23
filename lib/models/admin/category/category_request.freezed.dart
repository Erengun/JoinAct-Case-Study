// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryRequest _$CategoryRequestFromJson(Map<String, dynamic> json) {
  return _CategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryRequest {
  String? get devKey => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryRequestCopyWith<CategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryRequestCopyWith<$Res> {
  factory $CategoryRequestCopyWith(
          CategoryRequest value, $Res Function(CategoryRequest) then) =
      _$CategoryRequestCopyWithImpl<$Res, CategoryRequest>;
  @useResult
  $Res call({String? devKey, String? name});
}

/// @nodoc
class _$CategoryRequestCopyWithImpl<$Res, $Val extends CategoryRequest>
    implements $CategoryRequestCopyWith<$Res> {
  _$CategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      devKey: freezed == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryRequestCopyWith<$Res>
    implements $CategoryRequestCopyWith<$Res> {
  factory _$$_CategoryRequestCopyWith(
          _$_CategoryRequest value, $Res Function(_$_CategoryRequest) then) =
      __$$_CategoryRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? devKey, String? name});
}

/// @nodoc
class __$$_CategoryRequestCopyWithImpl<$Res>
    extends _$CategoryRequestCopyWithImpl<$Res, _$_CategoryRequest>
    implements _$$_CategoryRequestCopyWith<$Res> {
  __$$_CategoryRequestCopyWithImpl(
      _$_CategoryRequest _value, $Res Function(_$_CategoryRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CategoryRequest(
      devKey: freezed == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryRequest implements _CategoryRequest {
  const _$_CategoryRequest({this.devKey, this.name});

  factory _$_CategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryRequestFromJson(json);

  @override
  final String? devKey;
  @override
  final String? name;

  @override
  String toString() {
    return 'CategoryRequest(devKey: $devKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryRequestCopyWith<_$_CategoryRequest> get copyWith =>
      __$$_CategoryRequestCopyWithImpl<_$_CategoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryRequestToJson(
      this,
    );
  }
}

abstract class _CategoryRequest implements CategoryRequest {
  const factory _CategoryRequest({final String? devKey, final String? name}) =
      _$_CategoryRequest;

  factory _CategoryRequest.fromJson(Map<String, dynamic> json) =
      _$_CategoryRequest.fromJson;

  @override
  String? get devKey;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryRequestCopyWith<_$_CategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
