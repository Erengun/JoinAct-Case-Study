import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../../../../models/admin/category/create_category_model.dart';
import '../../../../models/admin/category/delete_category_model.dart';
import '../../../../models/admin/category/get_category_model.dart';
import '../../../../models/admin/category/update_category_model.dart';

part 'category_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class CategoryRestClient {
  factory CategoryRestClient(Dio dio, {String baseUrl}) = _CategoryRestClient;

  @POST('/GetCategories')
  Future<GetCategoriesResponse> getCategories(
    @Body() GetCategoriesRequest body,
  );

  @POST('/CreateCategory')
  Future<CreateCategoryResponse> createCategory(
    @Body() CreateCategoryRequest request,
  );

  @POST('/UpdateCategory')
  Future<UpdateCategoryResponse> updateCategory(
    @Body() UpdateCategoryRequest request,
  );

  @POST('/DeleteCategory')
  Future<DeleteCategoryResponse> deleteCategory(
    @Body() DeleteCategoryRequest request,
  );
}
