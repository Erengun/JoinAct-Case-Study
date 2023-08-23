import 'package:flutter/foundation.dart';
import '../../../models/admin/category/delete_category_model.dart';
import '../../../models/admin/category/update_category_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../models/admin/category/create_category_model.dart';
import 'category/category_rest_client.dart';

/// [AdminApi] is a wrapper class around [CategoryRestClient] to handle the response.
@injectable
class AdminApi {
  AdminApi(this._restClient);
  final CategoryRestClient _restClient;

  Future<Either<String, CreateCategoryResponse>> createCategory(
    CreateCategoryRequest request,
  ) async {
    try {
      final CreateCategoryResponse response =
          await _restClient.createCategory(request);
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
          await _restClient.updateCategory(request);
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
          await _restClient.deleteCategory(request);
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
