import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../constants/endpoints.dart';
import '../../../models/user/create_user_model.dart';
import '../../../models/user/get_order_model.dart';
import '../../../models/user/order/create_order_model.dart';

part 'user_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST('/GetOrdersForUserId')
  Future<GetOrdersResponse> getOrdersForUserId(
    @Body() GetOrdersRequest body,
  );

  @POST('/CreateUser')
  Future<CreateUserResponse> createUser(
    @Body() CreateUserRequest body,
  );

  @POST('/CreateOrder')
  Future<CreateOrderResponse> createOrder(
    @Body() CreateOrderRequest body,
  );
}
