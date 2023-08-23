import '../../../constants/endpoints.dart';
import 'category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_category_model.dart';

part 'update_category_model.freezed.dart';
part 'update_category_model.g.dart';

/// [UpdateCategoryRequest] is a request model for [AdminRestClient.UpdateCategory].
@freezed
class UpdateCategoryRequest with _$UpdateCategoryRequest {
  const factory UpdateCategoryRequest({
    required int id,
    @Default(Endpoints.devKey) String devKey,
    required String name,
  }) = _UpdateCategoryRequest;

  factory UpdateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryRequestFromJson(json);
}

/// [UpdateCategoryResponse] is a response model for [AdminRestClient.UpdateCategory].
@freezed
class UpdateCategoryResponse with _$UpdateCategoryResponse {
  const factory UpdateCategoryResponse({
    required Category data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _UpdateCategoryResponse;

  factory UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryResponseFromJson(json);
}
