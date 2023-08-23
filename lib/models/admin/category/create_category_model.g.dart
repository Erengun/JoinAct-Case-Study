// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateCategoryRequest _$$_CreateCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCategoryRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CreateCategoryRequestToJson(
        _$_CreateCategoryRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'name': instance.name,
    };

_$_CreateCategoryResponse _$$_CreateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCategoryResponse(
      data: Category.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_CreateCategoryResponseToJson(
        _$_CreateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
