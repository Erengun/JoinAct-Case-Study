import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/category_repository.dart';
import '../../../models/admin/category/category.dart';
import '../../../models/admin/category/create_category_model.dart';
import '../../../models/admin/category/delete_category_model.dart';
import '../../../models/admin/category/get_category_model.dart';
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

  createCategory(String categoryName) async {
    state = state.copyWith(
      isLoading: true,
    );
    final Either<String, CreateCategoryResponse> response = await ref
        .watch(getCategoryRepositoryProvider)
        .createCategory(CreateCategoryRequest(name: categoryName));
    response.fold((String l) => setError(l), (CreateCategoryResponse r) {
      final List<Category> categories = state.categories;
      categories.add(r.data);
      state = state.copyWith(
        isLoading: false,
        categories: categories,
      );
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
      final List<Category> categories = state.categories;
      categories.removeWhere((Category element) => element.id == categoryId);
      state = state.copyWith(
        isLoading: false,
        categories: categories,
      );
    });
  }
}
