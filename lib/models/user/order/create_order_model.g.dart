// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOrderRequest _$$_CreateOrderRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateOrderRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      userId: json['userId'] as int,
      productIds:
          (json['productIds'] as List<dynamic>).map((e) => e as int).toList(),
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_CreateOrderRequestToJson(
        _$_CreateOrderRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'userId': instance.userId,
      'productIds': instance.productIds,
      'time': instance.time,
    };

_$_CreateOrderResponse _$$_CreateOrderResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateOrderResponse(
      data: Order.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_CreateOrderResponseToJson(
        _$_CreateOrderResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
