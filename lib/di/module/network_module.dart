import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:network_logger/network_logger.dart';

import '../../constants/endpoints.dart';
import '../../data/getstore/get_store_helper.dart';
import '../../data/network/admin/category/category_rest_client.dart';

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
      ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
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

  @preResolve
  Future<GetStorage> provideGetStorage() {
    return Future.value(GetStorage());
  }

  @preResolve
  Future<CategoryRestClient> provideCategoryRestClient(Dio dio) {
    return Future.value(CategoryRestClient(dio));
  }
}
