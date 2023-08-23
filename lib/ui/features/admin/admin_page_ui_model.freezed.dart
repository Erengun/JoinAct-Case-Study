// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_page_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminPageUIModel {
  List<Category>? get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminPageUIModelCopyWith<AdminPageUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPageUIModelCopyWith<$Res> {
  factory $AdminPageUIModelCopyWith(
          AdminPageUIModel value, $Res Function(AdminPageUIModel) then) =
      _$AdminPageUIModelCopyWithImpl<$Res, AdminPageUIModel>;
  @useResult
  $Res call({List<Category>? categories, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$AdminPageUIModelCopyWithImpl<$Res, $Val extends AdminPageUIModel>
    implements $AdminPageUIModelCopyWith<$Res> {
  _$AdminPageUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminPageUIModelCopyWith<$Res>
    implements $AdminPageUIModelCopyWith<$Res> {
  factory _$$_AdminPageUIModelCopyWith(
          _$_AdminPageUIModel value, $Res Function(_$_AdminPageUIModel) then) =
      __$$_AdminPageUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category>? categories, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$_AdminPageUIModelCopyWithImpl<$Res>
    extends _$AdminPageUIModelCopyWithImpl<$Res, _$_AdminPageUIModel>
    implements _$$_AdminPageUIModelCopyWith<$Res> {
  __$$_AdminPageUIModelCopyWithImpl(
      _$_AdminPageUIModel _value, $Res Function(_$_AdminPageUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AdminPageUIModel(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AdminPageUIModel implements _AdminPageUIModel {
  const _$_AdminPageUIModel(
      {final List<Category>? categories = null,
      this.isLoading = false,
      this.errorMessage = null})
      : _categories = categories;

  final List<Category>? _categories;
  @override
  @JsonKey()
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminPageUIModel(categories: $categories, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminPageUIModel &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminPageUIModelCopyWith<_$_AdminPageUIModel> get copyWith =>
      __$$_AdminPageUIModelCopyWithImpl<_$_AdminPageUIModel>(this, _$identity);
}

abstract class _AdminPageUIModel implements AdminPageUIModel {
  const factory _AdminPageUIModel(
      {final List<Category>? categories,
      final bool isLoading,
      final String? errorMessage}) = _$_AdminPageUIModel;

  @override
  List<Category>? get categories;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AdminPageUIModelCopyWith<_$_AdminPageUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
