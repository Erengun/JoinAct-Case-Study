import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';

part 'delete_product_model.freezed.dart';
part 'delete_product_model.g.dart';

@freezed
class DeleteProductRequest with _$DeleteProductRequest {
  const factory DeleteProductRequest({
    @Default(Endpoints.devKey) String devKey,
    required int id,
  }) = _DeleteProductRequest;

  factory DeleteProductRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductRequestFromJson(json);
}

/// [DeleteProductResponse] is a response model for [AdminRestClient.deleteProduct].
@freezed
class DeleteProductResponse with _$DeleteProductResponse {
  const factory DeleteProductResponse({
    required bool data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _DeleteProductResponse;

  factory DeleteProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteProductResponseFromJson(json);
}
