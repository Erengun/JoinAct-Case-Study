// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProductRequest _$$_UpdateProductRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProductRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      id: json['id'] as int,
      categoryId: json['categoryId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      imageBase64: json['imageBase64'] as String,
      currencyId: json['currencyId'] as int,
      productVideoLink: json['productVideoLink'] as String,
    );

Map<String, dynamic> _$$_UpdateProductRequestToJson(
        _$_UpdateProductRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageBase64': instance.imageBase64,
      'currencyId': instance.currencyId,
      'productVideoLink': instance.productVideoLink,
    };

_$_UpdateProductResponse _$$_UpdateProductResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProductResponse(
      data: Product.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_UpdateProductResponseToJson(
        _$_UpdateProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
