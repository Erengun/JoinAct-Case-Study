// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProductRequest _$$_CreateProductRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProductRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      categoryId: json['categoryId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      imageBase64: json['imageBase64'] as String,
      currencyId: json['currencyId'] as int,
      productVideoLink: json['productVideoLink'] as String,
    );

Map<String, dynamic> _$$_CreateProductRequestToJson(
        _$_CreateProductRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageBase64': instance.imageBase64,
      'currencyId': instance.currencyId,
      'productVideoLink': instance.productVideoLink,
    };

_$_CreateProductResponse _$$_CreateProductResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProductResponse(
      data: Product.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_CreateProductResponseToJson(
        _$_CreateProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
