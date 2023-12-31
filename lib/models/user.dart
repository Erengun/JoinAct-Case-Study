// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String token,
    required UserModel user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserModel extends HiveObject with _$UserModel {
  @HiveType(typeId: 0, adapterName: 'UserModelAdapter')
  factory UserModel({
    @JsonKey(name: '_id') @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String email,
    @HiveField(3) required String role,
    @HiveField(4) required bool verified,
  }) = _UserModel;
  UserModel._();

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String mail,
    @Default('') String phone,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
