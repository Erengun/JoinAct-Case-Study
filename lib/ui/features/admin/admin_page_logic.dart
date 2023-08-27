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
import '../../../models/admin/product/delete_product_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/product.dart';
import 'admin_page_ui_model.dart';

part 'admin_page_logic.g.dart';

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

//! TODO: add currency

@riverpod
class AdminPageLogic extends _$AdminPageLogic {
  @override
  AdminPageUIModel build() {
    return const AdminPageUIModel(
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

  void setSelectedCategory(Category category) {
    state = state.copyWith(
      selectedCategory: category,
    );
  }

  void setProducts(List<Product> products) {
    state = state.copyWith(
      isLoading: false,
      products: products,
    );
    // if categories is not empty, then we can set productsMap
    if (state.categories.isNotEmpty) {
      setProductsMap(_getProductsMap(products));
    }
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
      isLoading: false,
      productsMap: productsMap,
    );
  }

  // category

  createCategory(String categoryName) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, CreateCategoryResponse> response = await ref
        .watch(getCategoryRepositoryProvider)
        .createCategory(CreateCategoryRequest(name: categoryName));
    response.fold((String l) => setError(l), (CreateCategoryResponse r) {
      final List<Category> categories = List<Category>.from(state.categories);
      categories.add(r.data);
      state = state.copyWith(
        isLoading: false,
        categories: categories,
      );
      setProductsMap(_getProductsMap(state.products));
    });
  }

  removeCategory(int categoryId) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, DeleteCategoryResponse> response = await ref
        .watch(getCategoryRepositoryProvider)
        .deleteCategory(DeleteCategoryRequest(id: categoryId));
    response.fold((String l) => setError(l), (DeleteCategoryResponse r) {
      final List<Category> categories = List<Category>.from(state.categories);
      categories.removeWhere((Category element) => element.id == categoryId);
      state = state.copyWith(
        isLoading: false,
        categories: categories,
      );
    });
  }

  // product

  createProduct(CreateProductRequest request) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, CreateProductResponse> response =
        await ref.watch(getProductRepositoryProvider).createProduct(request);
    response.fold((String l) => setError(l), (CreateProductResponse r) {
      final List<Product> products = List<Product>.from(state.products);
      products.add(r.data);
      state = state.copyWith(
        isLoading: false,
        products: products,
      );
      setProductsMap(_getProductsMap(state.products));
    });
  }

  removeProduct(int productId) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, DeleteProductResponse> response = await ref
        .watch(getProductRepositoryProvider)
        .deleteProduct(DeleteProductRequest(id: productId));
    response.fold((String l) => setError(l), (DeleteProductResponse r) {
      final List<Product> products = List<Product>.from(state.products);
      products.removeWhere((Product element) => element.id == productId);
      state = state.copyWith(
        isLoading: false,
        products: products,
      );
      setProductsMap(_getProductsMap(state.products));
    });
  }
}
