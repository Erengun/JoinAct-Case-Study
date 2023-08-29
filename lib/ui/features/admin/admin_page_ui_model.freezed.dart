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
  /// The @Default annotation is used to set a default value for a field.
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Map<int, List<Product>> get productsMap => throw _privateConstructorUsedError;
  bool get isCategoryLoading => throw _privateConstructorUsedError;
  bool get isProductLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  List<Currency> get currencies => throw _privateConstructorUsedError;

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
  $Res call(
      {List<Category> categories,
      List<Product> products,
      Map<int, List<Product>> productsMap,
      bool isCategoryLoading,
      bool isProductLoading,
      String? errorMessage,
      Category? selectedCategory,
      List<Currency> currencies});

  $CategoryCopyWith<$Res>? get selectedCategory;
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
    Object? categories = null,
    Object? products = null,
    Object? productsMap = null,
    Object? isCategoryLoading = null,
    Object? isProductLoading = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = freezed,
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsMap: null == productsMap
          ? _value.productsMap
          : productsMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Product>>,
      isCategoryLoading: null == isCategoryLoading
          ? _value.isCategoryLoading
          : isCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductLoading: null == isProductLoading
          ? _value.isProductLoading
          : isProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
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
  $Res call(
      {List<Category> categories,
      List<Product> products,
      Map<int, List<Product>> productsMap,
      bool isCategoryLoading,
      bool isProductLoading,
      String? errorMessage,
      Category? selectedCategory,
      List<Currency> currencies});

  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
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
    Object? categories = null,
    Object? products = null,
    Object? productsMap = null,
    Object? isCategoryLoading = null,
    Object? isProductLoading = null,
    Object? errorMessage = freezed,
    Object? selectedCategory = freezed,
    Object? currencies = null,
  }) {
    return _then(_$_AdminPageUIModel(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsMap: null == productsMap
          ? _value._productsMap
          : productsMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Product>>,
      isCategoryLoading: null == isCategoryLoading
          ? _value.isCategoryLoading
          : isCategoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductLoading: null == isProductLoading
          ? _value.isProductLoading
          : isProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$_AdminPageUIModel implements _AdminPageUIModel {
  const _$_AdminPageUIModel(
      {final List<Category> categories = const [],
      final List<Product> products = const [],
      final Map<int, List<Product>> productsMap = const {},
      this.isCategoryLoading = false,
      this.isProductLoading = false,
      this.errorMessage = null,
      this.selectedCategory = null,
      final List<Currency> currencies = const []})
      : _categories = categories,
        _products = products,
        _productsMap = productsMap,
        _currencies = currencies;

  /// The @Default annotation is used to set a default value for a field.
  final List<Category> _categories;

  /// The @Default annotation is used to set a default value for a field.
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final Map<int, List<Product>> _productsMap;
  @override
  @JsonKey()
  Map<int, List<Product>> get productsMap {
    if (_productsMap is EqualUnmodifiableMapView) return _productsMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_productsMap);
  }

  @override
  @JsonKey()
  final bool isCategoryLoading;
  @override
  @JsonKey()
  final bool isProductLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final Category? selectedCategory;
  final List<Currency> _currencies;
  @override
  @JsonKey()
  List<Currency> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'AdminPageUIModel(categories: $categories, products: $products, productsMap: $productsMap, isCategoryLoading: $isCategoryLoading, isProductLoading: $isProductLoading, errorMessage: $errorMessage, selectedCategory: $selectedCategory, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminPageUIModel &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productsMap, _productsMap) &&
            (identical(other.isCategoryLoading, isCategoryLoading) ||
                other.isCategoryLoading == isCategoryLoading) &&
            (identical(other.isProductLoading, isProductLoading) ||
                other.isProductLoading == isProductLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productsMap),
      isCategoryLoading,
      isProductLoading,
      errorMessage,
      selectedCategory,
      const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminPageUIModelCopyWith<_$_AdminPageUIModel> get copyWith =>
      __$$_AdminPageUIModelCopyWithImpl<_$_AdminPageUIModel>(this, _$identity);
}

abstract class _AdminPageUIModel implements AdminPageUIModel {
  const factory _AdminPageUIModel(
      {final List<Category> categories,
      final List<Product> products,
      final Map<int, List<Product>> productsMap,
      final bool isCategoryLoading,
      final bool isProductLoading,
      final String? errorMessage,
      final Category? selectedCategory,
      final List<Currency> currencies}) = _$_AdminPageUIModel;

  @override

  /// The @Default annotation is used to set a default value for a field.
  List<Category> get categories;
  @override
  List<Product> get products;
  @override
  Map<int, List<Product>> get productsMap;
  @override
  bool get isCategoryLoading;
  @override
  bool get isProductLoading;
  @override
  String? get errorMessage;
  @override
  Category? get selectedCategory;
  @override
  List<Currency> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_AdminPageUIModelCopyWith<_$_AdminPageUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
