import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import 'category.dart';

part 'get_category_model.freezed.dart';
part 'get_category_model.g.dart';


@freezed
class GetCategoriesRequest with _$GetCategoriesRequest {
  const factory GetCategoriesRequest({
    @Default(Endpoints.devKey) String devKey,
  }) = _GetCategoriesRequest;

  factory GetCategoriesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetCategoriesRequestFromJson(json);
}

/// [GetCategoriesResponse] is a response model for [AdminRestClient.getCategories].
@freezed
class GetCategoriesResponse with _$GetCategoriesResponse {
  const factory GetCategoriesResponse({
    required CategoryData data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _GetCategoriesResponse;

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCategoriesResponseFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    required List<Category> categories,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}
