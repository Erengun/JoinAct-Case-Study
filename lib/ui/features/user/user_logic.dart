// ignore_for_file: always_declare_return_types

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/getstore/get_store_helper.dart';
import '../../../data/network/category_repository.dart';
import '../../../data/network/order_repository.dart';
import '../../../data/network/product_repository.dart';
import '../../../di/components/service_locator.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/user.dart';
import '../../../models/user/create_user_model.dart';
import '../../../models/user/get_order_model.dart';
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
