import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/endpoints.dart';
import 'order/order.dart';

part 'get_order_model.freezed.dart';
part 'get_order_model.g.dart';

@freezed
class GetOrdersRequest with _$GetOrdersRequest {
  const factory GetOrdersRequest({
    @Default(Endpoints.devKey) String devKey,
    required int userId,
  }) = _GetOrdersRequest;

  factory GetOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersRequestFromJson(json);
}

@freezed
class GetOrdersResponse with _$GetOrdersResponse {
  const factory GetOrdersResponse({
    required OrderData data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _GetOrdersResponse;

  factory GetOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersResponseFromJson(json);
}
