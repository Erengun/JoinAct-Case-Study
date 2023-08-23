// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCategoryResponse _$$_GetCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCategoryResponse(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_GetCategoryResponseToJson(
        _$_GetCategoryResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
