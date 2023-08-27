// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int,
      userId: json['userId'] as int,
      time: json['time'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'time': instance.time,
      'items': instance.items,
    };

_$_OrderData _$$_OrderDataFromJson(Map<String, dynamic> json) => _$_OrderData(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDataToJson(_$_OrderData instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      id: json['id'] as int,
      productId: json['productId'] as int,
      orderId: json['orderId'] as int,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'orderId': instance.orderId,
    };
