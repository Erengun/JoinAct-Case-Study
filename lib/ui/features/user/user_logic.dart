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

/// Riverpod Providers:
/// The next section consists of several asynchronous functions annotated with @riverpod.
/// These are Riverpod providers, which encapsulate pieces of state and
/// allow widgets to listen to that state codewithandrea.com.
@riverpod
Future<Either<String, GetOrdersResponse>> getOrdersForUserId(
    GetOrdersForUserIdRef ref) async {
  final String id = getIt<GetStoreHelper>().getToken()!;
  final OrderRepository orderRepository = ref.watch(getOrderRepositoryProvider);
  final Either<String, GetOrdersResponse> response = await orderRepository
      .getOrdersForUserId(GetOrdersRequest(userId: int.parse(id)));
  return response;
}

/// In the above code, getOrdersForUserId is a provider that fetches orders for a specific user from an OrderRepository.
/// It uses the watch method from Riverpod to listen to a provider and react to its changes.
/// This method returns a Future<Either<String, GetOrdersResponse>>,
/// which means it will eventually return either a string (representing an error) or a GetOrdersResponse object

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

/// UserLogic Class:
/// The UserLogic class extends the generated _$UserLogic class and contains the state and business logic for the user.
/// It uses a GetStoreHelper object to retrieve the user data and uses various methods to update its state.
@riverpod
class UserLogic extends _$UserLogic {
  final GetStoreHelper _getStoreHelper = getIt<GetStoreHelper>();

  /// the build method returns an instance of UserUIModel with the isLoading property set to true.
  /// This indicates that the data is currently being fetched. Other methods in this class,
  /// like setCategories, setProducts, etc., update the state of the UserLogic instance
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

  /// The createUser and createOrder methods are used to create a new user and a new order, respectively.
  ///  They set isLoading to true at the beginning, perform the creation operation,
  /// and then update the state based on whether the operation was successful.
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

  createOrder({Function()? onSuccess}) async {
    final List<Product> products = state.cartProducts;
    final int id = state.user.id.isNegative
        ? int.parse(_getStoreHelper.getToken()!)
        : state.user.id;
    final CreateOrderRequest request = CreateOrderRequest(
      productIds: products.map((Product e) => e.id).toList(),
      time: DateTime.now().toIso8601String(),
      userId: id,
    );
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
        cartProducts: <Product>[],
      );
      if (onSuccess != null) {
        onSuccess();
      }
    });
  }

  /// Logout: The logout method is used to clear the stored user data and set the user property of the state to an empty User object.
  logout() {
    _getStoreHelper.clear();
    state = state.copyWith(
      user: const User(),
    );
  }
}
