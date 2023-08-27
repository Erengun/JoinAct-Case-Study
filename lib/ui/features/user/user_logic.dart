import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/category_repository.dart';
import '../../../data/network/order_repository.dart';
import '../../../data/network/product_repository.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
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
}