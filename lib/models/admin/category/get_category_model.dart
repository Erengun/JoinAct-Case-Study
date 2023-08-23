import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'get_category_model.freezed.dart';
part 'get_category_model.g.dart';


/// [GetCategoriesResponse] is a response model for [AdminRestClient.getCategories].
@freezed
class GetCategoriesResponse with _$GetCategoriesResponse {
  const factory GetCategoriesResponse({
    required List<Category> categories,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _GetCategoryResponse;

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCategoriesResponseFromJson(json);
}
