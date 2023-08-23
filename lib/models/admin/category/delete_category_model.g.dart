// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteCategoryRequest _$$_DeleteCategoryRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteCategoryRequest(
      id: json['id'] as int,
      devKey: json['devKey'] as String,
    );

Map<String, dynamic> _$$_DeleteCategoryRequestToJson(
        _$_DeleteCategoryRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'devKey': instance.devKey,
    };

_$_DeleteCategoryResponse _$$_DeleteCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteCategoryResponse(
      data: json['data'] as bool,
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_DeleteCategoryResponseToJson(
        _$_DeleteCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
