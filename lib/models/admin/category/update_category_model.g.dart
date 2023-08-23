// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateCategoryRequest _$$_UpdateCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateCategoryRequest(
      id: json['id'] as int,
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UpdateCategoryRequestToJson(
        _$_UpdateCategoryRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'devKey': instance.devKey,
      'name': instance.name,
    };

_$_UpdateCategoryResponse _$$_UpdateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateCategoryResponse(
      data: Category.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_UpdateCategoryResponseToJson(
        _$_UpdateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
