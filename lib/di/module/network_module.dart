import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:network_logger/network_logger.dart';

import '../../constants/endpoints.dart';
import '../../data/getstore/get_store_helper.dart';
import '../../data/network/admin/category/category_rest_client.dart';
import '../../data/network/admin/product/product_rest_client.dart';
import '../../data/network/user/user_rest_client.dart';


/// NetworkModule is used to register network related dependencies. 
/// @module is used to register the module. 
/// @preResolve is used to make sure that the Future is resolved before the app starts.
/// @lazySingleton is used to make sure that the dependency is created only once.
/// @injectable is used to make sure that the dependency is created only once.
@module
abstract class NetworkModule {
  @preResolve
  Future<Dio> provideDio(GetStoreHelper getStoreHelper) {
    final Dio dio = Dio();

    dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout =
          const Duration(milliseconds: Endpoints.connectionTimeout)
      ..options.receiveTimeout =
          const Duration(milliseconds: Endpoints.receiveTimeout)
      // ignore: always_specify_types
      ..options.headers = {
        'Content-Type': 'application/json',
        'accept': 'text/plain'
      }
      ..interceptors.add(LogInterceptor(
        request: false,
        responseBody: true,
        requestHeader: false,
      ))
      ..interceptors.add(DioNetworkLogger())
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            return handler.next(options);
          },
        ),
      );

    return Future.value(dio);
  }

  /// Register RestClients here to be used in the app. 
  /// It is recommended to use @preResolve annotation to make sure that the
  /// Future is resolved before the app starts.

  @preResolve
  Future<GetStorage> provideGetStorage() {
    return Future.value(GetStorage());
  }

  @preResolve
  Future<CategoryRestClient> provideCategoryRestClient(Dio dio) {
    return Future.value(CategoryRestClient(dio));
  }

  @preResolve
  Future<ProductRestClient> provideProductRestClient(Dio dio) {
    return Future.value(ProductRestClient(dio));
  }

  @preResolve
  Future<UserRestClient> provideUserRestClient(Dio dio) {
    return Future.value(UserRestClient(dio));
  }
}
