import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_model.freezed.dart';
part 'create_category_model.g.dart';

/// [CreateCategoryRequest] is a request model for [AdminRestClient.createCategory].
@freezed
class CreateCategoryRequest with _$CreateCategoryRequest {
  const factory CreateCategoryRequest({
    required String devKey,
    required String name,
  }) = _CreateCategoryRequest;

  factory CreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryRequestFromJson(json);
}

@freezed
class CreateCategoryResponse with _$CreateCategoryResponse {
  const factory CreateCategoryResponse({
    required CategoryData data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _CreateCategoryResponse;

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    required int id,
    required String name,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}
