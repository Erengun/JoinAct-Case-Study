import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../constants/endpoints.dart';
import '../../../../models/admin/product/create_product_model.dart';
import '../../../../models/admin/product/delete_product_model.dart';
import '../../../../models/admin/product/get_product_model.dart';
import '../../../../models/admin/product/update_product_model.dart';

part 'product_rest_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class ProductRestClient {
  factory ProductRestClient(Dio dio, {String baseUrl}) = _ProductRestClient;

  @POST('/GetProducts')
  Future<GetProductsResponse> getProducts(
    @Body() GetProductsRequest body,
  );

  @POST('/CreateProduct')
  Future<CreateProductResponse> createProduct(
    @Body() CreateProductRequest request,
  );

  @POST('/UpdateProduct')
  Future<UpdateProductResponse> updateProduct(
    @Body() UpdateProductRequest request,
  );

  @POST('/DeleteProduct')
  Future<DeleteProductResponse> deleteProduct(
    @Body() DeleteProductRequest request,
  );
}
