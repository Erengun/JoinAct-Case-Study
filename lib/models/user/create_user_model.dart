import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/endpoints.dart';
import '../user.dart';

part 'create_user_model.freezed.dart';
part 'create_user_model.g.dart';

@freezed
class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    @Default(Endpoints.devKey) String devKey,
    required String name,
    required String surname,
    required String mail,
    required String phone,
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}

@freezed
class CreateUserResponse with _$CreateUserResponse {
  const factory CreateUserResponse({
    required User data,
    required int result,
    required String message,
    required bool isSuccessful,
  }) = _CreateUserResponse;

  factory CreateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseFromJson(json);
}