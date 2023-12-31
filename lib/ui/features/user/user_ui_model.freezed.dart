// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserUIModel {
  List<Order> get orders => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Map<int, List<Product>> get productsMap => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<Product> get cartProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserUIModelCopyWith<UserUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUIModelCopyWith<$Res> {
  factory $UserUIModelCopyWith(
          UserUIModel value, $Res Function(UserUIModel) then) =
      _$UserUIModelCopyWithImpl<$Res, UserUIModel>;
  @useResult
  $Res call(
      {List<Order> orders,
      List<Category> categories,
      User user,
      Map<int, List<Product>> productsMap,
      bool isLoading,
      String? errorMessage,
      List<Product> cartProducts});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserUIModelCopyWithImpl<$Res, $Val extends UserUIModel>
    implements $UserUIModelCopyWith<$Res> {
  _$UserUIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? categories = null,
    Object? user = null,
    Object? productsMap = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? cartProducts = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      productsMap: null == productsMap
          ? _value.productsMap
          : productsMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Product>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserUIModelCopyWith<$Res>
    implements $UserUIModelCopyWith<$Res> {
  factory _$$_UserUIModelCopyWith(
          _$_UserUIModel value, $Res Function(_$_UserUIModel) then) =
      __$$_UserUIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Order> orders,
      List<Category> categories,
      User user,
      Map<int, List<Product>> productsMap,
      bool isLoading,
      String? errorMessage,
      List<Product> cartProducts});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserUIModelCopyWithImpl<$Res>
    extends _$UserUIModelCopyWithImpl<$Res, _$_UserUIModel>
    implements _$$_UserUIModelCopyWith<$Res> {
  __$$_UserUIModelCopyWithImpl(
      _$_UserUIModel _value, $Res Function(_$_UserUIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? categories = null,
    Object? user = null,
    Object? productsMap = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? cartProducts = null,
  }) {
    return _then(_$_UserUIModel(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      productsMap: null == productsMap
          ? _value._productsMap
          : productsMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Product>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_UserUIModel implements _UserUIModel {
  const _$_UserUIModel(
      {final List<Order> orders = const <Order>[],
      final List<Category> categories = const <Category>[],
      this.user = const User(),
      final Map<int, List<Product>> productsMap = const <int, List<Product>>{},
      this.isLoading = false,
      this.errorMessage = null,
      final List<Product> cartProducts = const <Product>[]})
      : _orders = orders,
        _categories = categories,
        _productsMap = productsMap,
        _cartProducts = cartProducts;

  final List<Order> _orders;
  @override
  @JsonKey()
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final User user;
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
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<Product> _cartProducts;
  @override
  @JsonKey()
  List<Product> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'UserUIModel(orders: $orders, categories: $categories, user: $user, productsMap: $productsMap, isLoading: $isLoading, errorMessage: $errorMessage, cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUIModel &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._productsMap, _productsMap) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_categories),
      user,
      const DeepCollectionEquality().hash(_productsMap),
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_cartProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUIModelCopyWith<_$_UserUIModel> get copyWith =>
      __$$_UserUIModelCopyWithImpl<_$_UserUIModel>(this, _$identity);
}

abstract class _UserUIModel implements UserUIModel {
  const factory _UserUIModel(
      {final List<Order> orders,
      final List<Category> categories,
      final User user,
      final Map<int, List<Product>> productsMap,
      final bool isLoading,
      final String? errorMessage,
      final List<Product> cartProducts}) = _$_UserUIModel;

  @override
  List<Order> get orders;
  @override
  List<Category> get categories;
  @override
  User get user;
  @override
  Map<int, List<Product>> get productsMap;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  List<Product> get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$_UserUIModelCopyWith<_$_UserUIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
