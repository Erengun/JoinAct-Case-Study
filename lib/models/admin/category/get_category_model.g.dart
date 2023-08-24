// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetCategoriesRequest _$$_GetCategoriesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetCategoriesRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
    );

Map<String, dynamic> _$$_GetCategoriesRequestToJson(
        _$_GetCategoriesRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
    };

_$_GetCategoriesResponse _$$_GetCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCategoriesResponse(
      data: CategoryData.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_GetCategoriesResponseToJson(
        _$_GetCategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };

_$_CategoryData _$$_CategoryDataFromJson(Map<String, dynamic> json) =>
    _$_CategoryData(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryDataToJson(_$_CategoryData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
