// ignore_for_file: always_declare_return_types, always_specify_types, strict_raw_type

import 'package:fpdart/fpdart.dart' hide Order;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/getstore/get_store_helper.dart';
import '../../../data/network/category_repository.dart';
import '../../../data/network/order_repository.dart';
import '../../../data/network/product_repository.dart';
import '../../../di/components/service_locator.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import '../../../models/user.dart';
import '../../../models/user/create_user_model.dart';
import '../../../models/user/get_order_model.dart';
import '../../../models/user/order/create_order_model.dart';
import '../../../models/user/order/order.dart';
import 'user_ui_model.dart';

part 'user_logic.g.dart';

@riverpod
Future<Either<String, GetOrdersResponse>> getOrdersForUserId(
    GetOrdersForUserIdRef ref, int id) async {
  final OrderRepository orderRepository = ref.watch(getOrderRepositoryProvider);
  final Either<String, GetOrdersResponse> response =
      await orderRepository.getOrdersForUserId(GetOrdersRequest(userId: id));
  return response;
}

@riverpod
Future<Either<String, GetCategoriesResponse>> fetchCategories(
    FetchCategoriesRef ref) async {
  final CategoryRepository categoryRepository =
      ref.watch(getCategoryRepositoryProvider);
  final Either<String, GetCategoriesResponse> response =
      await categoryRepository.getCategories();
  return response;
}

@riverpod
Future<Either<String, GetProductsResponse>> fetchProducts(
    FetchProductsRef ref) async {
  final ProductRepository productRepository =
      ref.watch(getProductRepositoryProvider);
  final Either<String, GetProductsResponse> response =
      await productRepository.getProducts();
  return response;
}

@riverpod
Future<User?> fetchUser(FetchUserRef ref) async {
  final GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();
  final User? savedUser = getStoreHelper.getUser();
  return savedUser;
}

@riverpod
class UserLogic extends _$UserLogic {
  final GetStoreHelper _getStoreHelper = getIt<GetStoreHelper>();
  @override
  UserUIModel build() {
    return const UserUIModel(
      isLoading: true,
    );
  }

  void setError(String errorMessage) {
    state = state.copyWith(
      isLoading: false,
      errorMessage: errorMessage,
    );
  }

  void setCategories(List<Category> categories) {
    state = state.copyWith(
      isLoading: false,
      categories: categories,
    );
  }

  void setProducts(List<Product> products) {
    state = state.copyWith(
      isLoading: false,
      productsMap: <int, List<Product>>{
        for (final Product product in products)
          product.categoryId: <Product>[
            if (state.productsMap[product.categoryId] != null)
              ...state.productsMap[product.categoryId]!,
            product,
          ],
      },
    );
  }

  void setOrders(List<Order> orders) {
    state = state.copyWith(
      isLoading: false,
      orders: orders,
    );
  }

  void setUser(User user) {
    state = state.copyWith(
      isLoading: false,
      user: user,
    );
  }


  void addProductToCart(Product product) {
    state = state.copyWith(
      isLoading: false,
      cartProducts: [
        ...state.cartProducts,
        product,
      ],
    );
  }

  createUser(CreateUserRequest request, {Function()? onSuccess}) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, CreateUserResponse> response =
        await ref.watch(getOrderRepositoryProvider).createUser(request);
    response.fold((String l) => setError(l), (CreateUserResponse r) {
      state = state.copyWith(
        isLoading: false,
        user: r.data,
      );
      _getStoreHelper.saveToken(r.data.id.toString());
      _getStoreHelper.saveUser(r.data);
      if (onSuccess != null) {
        onSuccess();
      }
    });
  }

  createOrder(CreateOrderRequest request, {Function()? onSuccess}) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, CreateOrderResponse> response =
        await ref.watch(getOrderRepositoryProvider).createOrder(request);
    response.fold((String l) => setError(l), (CreateOrderResponse r) {
      final order = r.data;
      state = state.copyWith(
        isLoading: false,
        orders: [
          ...state.orders,
          order,
        ],
      );
      if (onSuccess != null) {
        onSuccess();
      }
    });
  }

  logout() {
    _getStoreHelper.clear();
    state = state.copyWith(
      user: const User(),
    );
  }
}
