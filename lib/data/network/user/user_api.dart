import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../models/admin/category/get_category_model.dart';
import '../../../models/admin/product/get_product_model.dart';
import '../../../models/user/get_order_model.dart';
import '../admin/category/category_rest_client.dart';
import '../admin/product/product_rest_client.dart';
import 'user_rest_client.dart';

@injectable
class UserApi {
  UserApi(
      this._categoryRestClient, this._productRestClient, this._userRestClient);
  final CategoryRestClient _categoryRestClient;
  final ProductRestClient _productRestClient;
  final UserRestClient _userRestClient;

  Future<Either<String, GetCategoriesResponse>> getCategories() async {
    try {
      final GetCategoriesResponse response =
          await _categoryRestClient.getCategories(const GetCategoriesRequest());
      if (response.isSuccessful == false) {
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, GetProductsResponse>> getProducts() async {
    try {
      final GetProductsResponse response =
          await _productRestClient.getProducts(const GetProductsRequest());
      if (response.isSuccessful == false) {
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, GetOrdersResponse>> getOrders(GetOrdersRequest request) async {
    try {
      final GetOrdersResponse response =
          await _userRestClient.getOrdersForUserId(request);
      if (response.isSuccessful == false) {
        return left(response.message);
      }
      return right(response);
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }

  
}
