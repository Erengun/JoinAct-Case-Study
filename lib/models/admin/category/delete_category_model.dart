import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';

part 'delete_category_model.freezed.dart';
part 'delete_category_model.g.dart';

/// [DeleteCategoryRequest] is a request model for [AdminRestClient.deleteCategory].
@freezed
class DeleteCategoryRequest with _$DeleteCategoryRequest {
  const factory DeleteCategoryRequest({
    required int id,
    @Default(Endpoints.devKey) String devKey,
  }) = _DeleteCategoryRequest;

  factory DeleteCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryRequestFromJson(json);
}

/// [DeleteCategoryResponse] is a response model for [AdminRestClient.deleteCategory].
@freezed
class DeleteCategoryResponse with _$DeleteCategoryResponse {
  const factory DeleteCategoryResponse({
    required bool data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _DeleteCategoryResponse;

  factory DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryResponseFromJson(json);
}
