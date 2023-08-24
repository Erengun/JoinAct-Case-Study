// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteProductRequest _$$_DeleteProductRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteProductRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_DeleteProductRequestToJson(
        _$_DeleteProductRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'id': instance.id,
    };

_$_DeleteProductResponse _$$_DeleteProductResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteProductResponse(
      data: json['data'] as bool,
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_DeleteProductResponseToJson(
        _$_DeleteProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
