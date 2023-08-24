import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../models/admin/category/create_category_model.dart';
import '../../../models/admin/category/delete_category_model.dart';
import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/category/update_category_model.dart';
import '../../../models/admin/product/create_product_model.dart';
import '../../../models/admin/product/delete_product_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/admin/product/update_product_model.dart';
import 'category/category_rest_client.dart';
import 'product/product_rest_client.dart';

/// [AdminApi] is a wrapper class around [CategoryRestClient] to handle the response.
@injectable
class AdminApi {
  AdminApi(this._categoryRestClient, this._productRestClient);
  final CategoryRestClient _categoryRestClient;
  final ProductRestClient _productRestClient;

  Future<Either<String, GetCategoriesResponse>> getCategories() async {
    try {
      final GetCategoriesResponse response =
          await _categoryRestClient.getCategories(const GetCategoriesRequest());
      if (response.isSuccessful == false) {
        debugPrint(response.message);
        debugPrint('GetCategoriesResponse is not successful');
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, CreateCategoryResponse>> createCategory(
    CreateCategoryRequest request,
  ) async {
    try {
      final CreateCategoryResponse response =
          await _categoryRestClient.createCategory(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, UpdateCategoryResponse>> updateCategory(
    UpdateCategoryRequest request,
  ) async {
    try {
      final UpdateCategoryResponse response =
          await _categoryRestClient.updateCategory(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, DeleteCategoryResponse>> deleteCategory(
    DeleteCategoryRequest request,
  ) async {
    try {
      final DeleteCategoryResponse response =
          await _categoryRestClient.deleteCategory(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, GetProductsResponse>> getProducts() async {
    try {
      final GetProductsResponse response =
          await _productRestClient.getProducts(const GetProductsRequest());
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, CreateProductResponse>> createProduct(
    CreateProductRequest request,
  ) async {
    try {
      final CreateProductResponse response =
          await _productRestClient.createProduct(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, UpdateProductResponse>> updateProduct(
    UpdateProductRequest request,
  ) async {
    try {
      final UpdateProductResponse response =
          await _productRestClient.updateProduct(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, DeleteProductResponse>> deleteProduct(
    DeleteProductRequest request,
  ) async {
    try {
      final DeleteProductResponse response =
          await _productRestClient.deleteProduct(request);
      if (!response.isSuccessful) {
        debugPrint(response.message);
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }
}
