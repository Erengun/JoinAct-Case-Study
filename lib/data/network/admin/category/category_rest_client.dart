import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../../../../models/admin/category/category_request.dart';

part 'category_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class CategoryRestClient {
  factory CategoryRestClient(Dio dio, {String baseUrl}) = _CategoryRestClient;

  @POST('/CreateCategory')
  Future<String> createCategory(
    @Body() CategoryRequest request,
  );
}
