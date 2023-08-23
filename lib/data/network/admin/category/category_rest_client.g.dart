// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CategoryRestClient implements CategoryRestClient {
  _CategoryRestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.jointact.com/App';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> createCategory(CategoryRequest request) async {
    const Map<String, dynamic> _extra = <String, dynamic>{};
    final Map<String, dynamic> queryParameters = <String, dynamic>{};
    final Map<String, dynamic> _headers = <String, dynamic>{};
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final Response<String> _result = await _dio.fetch<String>(_setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/CreateCategory',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final String value = _result.data!;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final Uri url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
