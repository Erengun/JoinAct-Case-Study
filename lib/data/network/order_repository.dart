import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../di/components/service_locator.dart';
import '../../models/admin/product/get_product_model.dart';
import '../../models/user/get_order_model.dart';
import 'user/user_api.dart';

part 'order_repository.g.dart';

class OrderRepository {
  OrderRepository({required this.api});
  final UserApi api;

  // get orders for user id
  Future<Either<String, GetOrdersResponse>> getOrdersForUserId(
      GetOrdersRequest request) async {
    final Either<String, GetOrdersResponse> response =
        await api.getOrders(request);
    return response;
  }

    // get products
  Future<Either<String, GetProductsResponse>> getProducts() async {
    final Either<String, GetProductsResponse> response = await api.getProducts();
    return response;
  }
}

@riverpod
OrderRepository getOrderRepository(GetOrderRepositoryRef ref) {
  final UserApi api = getIt<UserApi>();
  return OrderRepository(api: api);
}
