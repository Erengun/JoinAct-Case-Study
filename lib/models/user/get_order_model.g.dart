// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetOrdersRequest _$$_GetOrdersRequestFromJson(Map<String, dynamic> json) =>
    _$_GetOrdersRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$_GetOrdersRequestToJson(_$_GetOrdersRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'userId': instance.userId,
    };

_$_GetOrdersResponse _$$_GetOrdersResponseFromJson(Map<String, dynamic> json) =>
    _$_GetOrdersResponse(
      data: OrderData.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_GetOrdersResponseToJson(
        _$_GetOrdersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
