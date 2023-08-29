// ignore_for_file: flutter_style_todos, always_declare_return_types

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/category_repository.dart';
import '../../../data/network/product_repository.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/create_category_model.dart';
import '../../../models/admin/category/delete_category_model.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/create_product_model.dart';
import '../../../models/admin/product/currency/currency.dart';
import '../../../models/admin/product/delete_product_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import 'admin_page_ui_model.dart';

part 'admin_page_logic.g.dart';

/// Riverpod Providers:
/// The next section consists of several asynchronous functions annotated with @riverpod.
/// These are Riverpod providers, which encapsulate pieces of state and
/// allow widgets to listen to that state codewithandrea.com.
/// 
/// fetchCategories, fetchProducts, and fetchCurrencies are providers that fetch categories, products, and currencies from the network.
@riverpod
Future<Either<String, GetCategoriesResponse>> fetchAdminCategories(
    FetchAdminCategoriesRef ref) async {
  final CategoryRepository categoryRepository =
      ref.watch(getCategoryRepositoryProvider);
  final Either<String, GetCategoriesResponse> response =
      await categoryRepository.getCategories();
  return response;
}

@riverpod
Future<Either<String, GetProductsResponse>> fetchAdminProducts(
    FetchAdminProductsRef ref) async {
  final ProductRepository productRepository =
      ref.watch(getProductRepositoryProvider);
  final Either<String, GetProductsResponse> response =
      await productRepository.getProducts();
  return response;
}

@riverpod
Future<Either<String, GetCurrenciesResponse>> fetchAdminCurrencies(
    FetchAdminCurrenciesRef ref) async {
  final ProductRepository productRepository =
      ref.watch(getProductRepositoryProvider);
  final Either<String, GetCurrenciesResponse> response =
      await productRepository.getCurrencies();
  return response;
}

/// The next three providers createCategory, removeCategory, and 
/// createProduct are responsible for creating and removing categories and products.
/// They use the watch method from Riverpod to listen to a provider and react to its changes.
@riverpod
class AdminPageLogic extends _$AdminPageLogic {
  @override
  AdminPageUIModel build() {
    return const AdminPageUIModel(
      isCategoryLoading: true,
      isProductLoading: true,
    );
  }

  void setError(String errorMessage) {
    state = state.copyWith(
      isProductLoading: false,
      isCategoryLoading: false,
      errorMessage: errorMessage,
    );
  }

  void setCategories(List<Category> categories) {
    state = state.copyWith(
      isCategoryLoading: false,
      categories: categories,
    );
  }

  void setSelectedCategory(Category category) {
    state = state.copyWith(
      selectedCategory: category,
    );
  }

  void setCurrencies(List<Currency> currencies) {
    state = state.copyWith(
      isCategoryLoading: false,
      currencies: currencies,
    );
  }

  void setProducts(List<Product> products) {
    state = state.copyWith(
      isProductLoading: false,
      products: products,
    );
    // if categories is not empty, then we can set productsMap
    setProductsMap(_getProductsMap(products));

  }

  Map<int, List<Product>> _getProductsMap(List<Product> products) {
    final Map<int, List<Product>> productsMap = <int, List<Product>>{};
    for (final Category category in state.categories) {
      final List<Product> productsByCategory = products
          .where((Product product) => product.categoryId == category.id)
          .toList();
      productsMap[category.id] = productsByCategory;
    }
    return productsMap;
  }

  void setProductsMap(Map<int, List<Product>> productsMap) {
    state = state.copyWith(
      isProductLoading: false,
      isCategoryLoading: false,
      productsMap: productsMap,
    );
  }

  // category

  createCategory(String categoryName) async {
    state = state.copyWith(
      isCategoryLoading: true,
    );
    final Either<String, CreateCategoryResponse> response = await ref
        .watch(getCategoryRepositoryProvider)
        .createCategory(CreateCategoryRequest(name: categoryName));
    response.fold((String l) => setError(l), (CreateCategoryResponse r) {
      final List<Category> categories = List<Category>.from(state.categories);
      categories.add(r.data);
      state = state.copyWith(
        isCategoryLoading: false,
        categories: categories,
      );
      setProductsMap(_getProductsMap(state.products));
    });
  }

  removeCategory(int categoryId) async {
    state = state.copyWith(
      isCategoryLoading: true,
    );
    final Either<String, DeleteCategoryResponse> response = await ref
        .watch(getCategoryRepositoryProvider)
        .deleteCategory(DeleteCategoryRequest(id: categoryId));
    response.fold((String l) => setError(l), (DeleteCategoryResponse r) {
      final List<Category> categories = List<Category>.from(state.categories);
      categories.removeWhere((Category element) => element.id == categoryId);
      state = state.copyWith(
        isCategoryLoading: false,
        categories: categories,
      );
    });
  }

  // product

  createProduct(CreateProductRequest request) async {
    state = state.copyWith(
      isProductLoading: true,
    );
    final Either<String, CreateProductResponse> response =
        await ref.watch(getProductRepositoryProvider).createProduct(request);
    response.fold((String l) => setError(l), (CreateProductResponse r) {
      final List<Product> products = List<Product>.from(state.products);
      products.add(r.data);
      state = state.copyWith(
        isProductLoading: false,
        products: products,
      );
      setProductsMap(_getProductsMap(state.products));
    });
  }

  removeProduct(int productId, {Function()? onSuccess}) async {
    state = state.copyWith(
      isProductLoading: true,
    );
    final Either<String, DeleteProductResponse> response = await ref
        .watch(getProductRepositoryProvider)
        .deleteProduct(DeleteProductRequest(id: productId));
    response.fold((String l) => setError(l), (DeleteProductResponse r) {
      final List<Product> products = List<Product>.from(state.products);
      products.removeWhere((Product element) => element.id == productId);
      state = state.copyWith(
        isProductLoading: false,
        products: products,
      );
      setProductsMap(_getProductsMap(state.products));
      if (onSuccess != null) {
        onSuccess();
      }
    });
  }
}
