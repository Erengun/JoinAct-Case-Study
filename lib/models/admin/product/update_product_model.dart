import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import 'product.dart';

part 'update_product_model.freezed.dart';
part 'update_product_model.g.dart';

@freezed
class UpdateProductRequest with _$UpdateProductRequest {
  const factory UpdateProductRequest({
    @Default(Endpoints.devKey) String devKey,
    required int id,
    required int categoryId,
    required String name,
    required String description,
    required int price,
    required String imageBase64,
    required int currencyId,
    required String productVideoLink,
  }) = _UpdateProductRequest;

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);
}

/// [UpdateProductResponse] is a response model for [AdminRestClient.updateProduct].
@freezed
class UpdateProductResponse with _$UpdateProductResponse {
  const factory UpdateProductResponse({
    required Product data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _UpdateProductResponse;

  factory UpdateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductResponseFromJson(json);
}
