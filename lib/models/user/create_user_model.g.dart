// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserRequest _$$_CreateUserRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateUserRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
      name: json['name'] as String,
      surname: json['surname'] as String,
      mail: json['mail'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_CreateUserRequestToJson(
        _$_CreateUserRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
      'name': instance.name,
      'surname': instance.surname,
      'mail': instance.mail,
      'phone': instance.phone,
    };

_$_CreateUserResponse _$$_CreateUserResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateUserResponse(
      data: User.fromJson(json['data'] as Map<String, dynamic>),
      result: json['result'] as int,
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
    );

Map<String, dynamic> _$$_CreateUserResponseToJson(
        _$_CreateUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
    };
