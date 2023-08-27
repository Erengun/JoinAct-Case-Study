import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../constants/endpoints.dart';
import '../../../models/user/get_order_model.dart';

part 'user_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST('/GetOrdersForUserId')
  Future<GetOrdersResponse> getOrdersForUserId(
    @Body() GetOrdersRequest body,
  ); 

}
