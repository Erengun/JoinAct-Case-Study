import 'package:fpdart/fpdart.dart';

import '../../di/components/service_locator.dart';
import '../../models/admin/category/category.dart';
import '../../models/admin/category/create_category_model.dart';
import '../../models/admin/category/get_category_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../models/admin/category/update_category_model.dart';
import 'admin/admin_api.dart';

part 'category_repository.g.dart';

class CategoryRepository {
  CategoryRepository({required this.api});
  final AdminApi api;

  // get categories
  Future<Either<String, GetCategoriesResponse>> getCategories() async {
    final Either<String, GetCategoriesResponse> response =
        await api.getCategories();
    return response;
  }

  // create category
  Future<Either<String, CreateCategoryResponse>> createCategory(
      CreateCategoryRequest request) async {
    final Either<String, CreateCategoryResponse> response =
        await api.createCategory(request);
    return response;
  }

  // update category
  Future<Either<String, UpdateCategoryResponse>> updateCategory(
      UpdateCategoryRequest request) async {
    final Either<String, UpdateCategoryResponse> response =
        await api.updateCategory(request);
    return response;
  }
}

@riverpod
CategoryRepository getCategoryRepository(GetCategoryRepositoryRef ref) {
  final AdminApi api = getIt<AdminApi>();
  return CategoryRepository(api: api);
}
