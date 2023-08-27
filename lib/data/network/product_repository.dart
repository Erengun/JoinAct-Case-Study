import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../di/components/service_locator.dart';
import '../../models/admin/product/create_product_model.dart';
import '../../models/admin/product/delete_product_model.dart';
import '../../models/admin/product/get_product_model.dart';
import '../../models/admin/product/update_product_model.dart';
import 'admin/admin_api.dart';

part 'product_repository.g.dart';

class ProductRepository {
  ProductRepository({required this.api});
  final AdminApi api;

  // get products
  Future<Either<String, GetProductsResponse>> getProducts() async {
    final Either<String, GetProductsResponse> response = await api.getProducts();
    return response;
  }

  // create product
  Future<Either<String, CreateProductResponse>> createProduct(
      CreateProductRequest request) async {
    final Either<String, CreateProductResponse> response =
        await api.createProduct(request);
    return response;
  }

  // update product
  Future<Either<String, UpdateProductResponse>> updateProduct(
      UpdateProductRequest request) async {
    final Either<String, UpdateProductResponse> response =
        await api.updateProduct(request);
    return response;
  }

  // delete product
  Future<Either<String, DeleteProductResponse>> deleteProduct(
      DeleteProductRequest request) async {
    final Either<String, DeleteProductResponse> response =
        await api.deleteProduct(request);
    return response;
  }
}

@riverpod
ProductRepository getProductRepository(GetProductRepositoryRef ref) {
  final AdminApi api = getIt<AdminApi>();
  return ProductRepository(api: api);
}
