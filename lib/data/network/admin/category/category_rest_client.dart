import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../../../../models/admin/category/create_category_model.dart';
import '../../../../models/admin/category/update_category_model.dart';

part 'category_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class CategoryRestClient {
  factory CategoryRestClient(Dio dio, {String baseUrl}) = _CategoryRestClient;

  @POST('/CreateCategory')
  Future<CreateCategoryResponse> createCategory(
    @Body() CreateCategoryRequest request,
  );

  @POST('/UpdateCategory')
  Future<UpdateCategoryResponse> updateCategory(
    @Body() UpdateCategoryRequest request,
  );
}
