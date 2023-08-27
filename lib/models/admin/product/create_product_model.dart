import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import 'product.dart';

part 'create_product_model.freezed.dart';
part 'create_product_model.g.dart';

@freezed
class CreateProductRequest with _$CreateProductRequest {
  const factory CreateProductRequest({
    @Default(Endpoints.devKey) String devKey,
    required int categoryId,
    required String name,
    required String description,
    required int price,
    required String imageBase64,
    required int currencyId,
    required String productVideoLink,
  }) = _CreateProductRequest;

  factory CreateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProductRequestFromJson(json);
}

/// [CreateProductResponse] is a response model for [AdminRestClient.createProduct].
@freezed
class CreateProductResponse with _$CreateProductResponse {
  const factory CreateProductResponse({
    required Product data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _CreateProductResponse;

  factory CreateProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProductResponseFromJson(json);
}
