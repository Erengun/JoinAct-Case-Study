// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get devKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call(
      {String devKey, String name, String surname, String mail, String phone});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? name = null,
    Object? surname = null,
    Object? mail = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserRequestCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$_CreateUserRequestCopyWith(_$_CreateUserRequest value,
          $Res Function(_$_CreateUserRequest) then) =
      __$$_CreateUserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String devKey, String name, String surname, String mail, String phone});
}

/// @nodoc
class __$$_CreateUserRequestCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$_CreateUserRequest>
    implements _$$_CreateUserRequestCopyWith<$Res> {
  __$$_CreateUserRequestCopyWithImpl(
      _$_CreateUserRequest _value, $Res Function(_$_CreateUserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
    Object? name = null,
    Object? surname = null,
    Object? mail = null,
    Object? phone = null,
  }) {
    return _then(_$_CreateUserRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserRequest implements _CreateUserRequest {
  const _$_CreateUserRequest(
      {this.devKey = Endpoints.devKey,
      required this.name,
      required this.surname,
      required this.mail,
      required this.phone});

  factory _$_CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String mail;
  @override
  final String phone;

  @override
  String toString() {
    return 'CreateUserRequest(devKey: $devKey, name: $name, surname: $surname, mail: $mail, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, devKey, name, surname, mail, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserRequestCopyWith<_$_CreateUserRequest> get copyWith =>
      __$$_CreateUserRequestCopyWithImpl<_$_CreateUserRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserRequestToJson(
      this,
    );
  }
}

abstract class _CreateUserRequest implements CreateUserRequest {
  const factory _CreateUserRequest(
      {final String devKey,
      required final String name,
      required final String surname,
      required final String mail,
      required final String phone}) = _$_CreateUserRequest;

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateUserRequest.fromJson;

  @override
  String get devKey;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get mail;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserRequestCopyWith<_$_CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateUserResponse _$CreateUserResponseFromJson(Map<String, dynamic> json) {
  return _CreateUserResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateUserResponse {
  User get data => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserResponseCopyWith<CreateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserResponseCopyWith<$Res> {
  factory $CreateUserResponseCopyWith(
          CreateUserResponse value, $Res Function(CreateUserResponse) then) =
      _$CreateUserResponseCopyWithImpl<$Res, CreateUserResponse>;
  @useResult
  $Res call({User data, int result, String message, bool isSuccessful});

  $UserCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateUserResponseCopyWithImpl<$Res, $Val extends CreateUserResponse>
    implements $CreateUserResponseCopyWith<$Res> {
  _$CreateUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get data {
    return $UserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateUserResponseCopyWith<$Res>
    implements $CreateUserResponseCopyWith<$Res> {
  factory _$$_CreateUserResponseCopyWith(_$_CreateUserResponse value,
          $Res Function(_$_CreateUserResponse) then) =
      __$$_CreateUserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User data, int result, String message, bool isSuccessful});

  @override
  $UserCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateUserResponseCopyWithImpl<$Res>
    extends _$CreateUserResponseCopyWithImpl<$Res, _$_CreateUserResponse>
    implements _$$_CreateUserResponseCopyWith<$Res> {
  __$$_CreateUserResponseCopyWithImpl(
      _$_CreateUserResponse _value, $Res Function(_$_CreateUserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? result = null,
    Object? message = null,
    Object? isSuccessful = null,
  }) {
    return _then(_$_CreateUserResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserResponse implements _CreateUserResponse {
  const _$_CreateUserResponse(
      {required this.data,
      required this.result,
      required this.message,
      required this.isSuccessful});

  factory _$_CreateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserResponseFromJson(json);

  @override
  final User data;
  @override
  final int result;
  @override
  final String message;
  @override
  final bool isSuccessful;

  @override
  String toString() {
    return 'CreateUserResponse(data: $data, result: $result, message: $message, isSuccessful: $isSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserResponse &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, result, message, isSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserResponseCopyWith<_$_CreateUserResponse> get copyWith =>
      __$$_CreateUserResponseCopyWithImpl<_$_CreateUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserResponseToJson(
      this,
    );
  }
}

abstract class _CreateUserResponse implements CreateUserResponse {
  const factory _CreateUserResponse(
      {required final User data,
      required final int result,
      required final String message,
      required final bool isSuccessful}) = _$_CreateUserResponse;

  factory _CreateUserResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateUserResponse.fromJson;

  @override
  User get data;
  @override
  int get result;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserResponseCopyWith<_$_CreateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
