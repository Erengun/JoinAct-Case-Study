import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import 'product.dart';

part 'get_product_model.freezed.dart';
part 'get_product_model.g.dart';

@freezed
class GetProductsRequest with _$GetProductsRequest {
  const factory GetProductsRequest({
    @Default(Endpoints.devKey) String devKey,
  }) = _GetProductsRequest;

  factory GetProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetProductsRequestFromJson(json);
}

@freezed
class GetProductsResponse with _$GetProductsResponse {
  const factory GetProductsResponse({
    required List<Product> products,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _GetProductsResponse;

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);
}

