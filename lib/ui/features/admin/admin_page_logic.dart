import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/network/category_repository.dart';
import '../../../models/admin/category/category.dart';
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
}
