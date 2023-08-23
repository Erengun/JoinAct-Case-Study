import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import 'category.dart';

part 'create_category_model.freezed.dart';
part 'create_category_model.g.dart';

/// [CreateCategoryRequest] is a request model for [AdminRestClient.createCategory].
@freezed
class CreateCategoryRequest with _$CreateCategoryRequest {
  const factory CreateCategoryRequest({
    @Default(Endpoints.devKey) String devKey,
    required String name,
  }) = _CreateCategoryRequest;

  factory CreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryRequestFromJson(json);
}

@freezed
class CreateCategoryResponse with _$CreateCategoryResponse {
  const factory CreateCategoryResponse({
    required Category data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _CreateCategoryResponse;

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);
}
