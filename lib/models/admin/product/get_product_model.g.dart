// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductsRequest _$$_GetProductsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductsRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
    );

Map<String, dynamic> _$$_GetProductsRequestToJson(
        _$_GetProductsRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
    };

_$_GetProductsResponse _$$_GetProductsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductsResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_GetProductsResponseToJson(
        _$_GetProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
