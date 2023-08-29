// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  int get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call({int id, String symbol, String name});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String symbol, String name});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$_Currency>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_$_Currency(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currency implements _Currency {
  const _$_Currency(
      {required this.id, required this.symbol, required this.name});

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  @override
  final int id;
  @override
  final String symbol;
  @override
  final String name;

  @override
  String toString() {
    return 'Currency(id: $id, symbol: $symbol, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {required final int id,
      required final String symbol,
      required final String name}) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  int get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCurrenciesResponse _$GetCurrenciesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCurrenciesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCurrenciesResponse {
  CurrencyData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrenciesResponseCopyWith<GetCurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrenciesResponseCopyWith<$Res> {
  factory $GetCurrenciesResponseCopyWith(GetCurrenciesResponse value,
          $Res Function(GetCurrenciesResponse) then) =
      _$GetCurrenciesResponseCopyWithImpl<$Res, GetCurrenciesResponse>;
  @useResult
  $Res call({CurrencyData data, String message, bool isSuccessful, int result});

  $CurrencyDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetCurrenciesResponseCopyWithImpl<$Res,
        $Val extends GetCurrenciesResponse>
    implements $GetCurrenciesResponseCopyWith<$Res> {
  _$GetCurrenciesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? isSuccessful = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CurrencyData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDataCopyWith<$Res> get data {
    return $CurrencyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetCurrenciesResponseCopyWith<$Res>
    implements $GetCurrenciesResponseCopyWith<$Res> {
  factory _$$_GetCurrenciesResponseCopyWith(_$_GetCurrenciesResponse value,
          $Res Function(_$_GetCurrenciesResponse) then) =
      __$$_GetCurrenciesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrencyData data, String message, bool isSuccessful, int result});

  @override
  $CurrencyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCurrenciesResponseCopyWithImpl<$Res>
    extends _$GetCurrenciesResponseCopyWithImpl<$Res, _$_GetCurrenciesResponse>
    implements _$$_GetCurrenciesResponseCopyWith<$Res> {
  __$$_GetCurrenciesResponseCopyWithImpl(_$_GetCurrenciesResponse _value,
      $Res Function(_$_GetCurrenciesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? isSuccessful = null,
    Object? result = null,
  }) {
    return _then(_$_GetCurrenciesResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CurrencyData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCurrenciesResponse implements _GetCurrenciesResponse {
  const _$_GetCurrenciesResponse(
      {required this.data,
      required this.message,
      required this.isSuccessful,
      required this.result});

  factory _$_GetCurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetCurrenciesResponseFromJson(json);

  @override
  final CurrencyData data;
  @override
  final String message;
  @override
  final bool isSuccessful;
  @override
  final int result;

  @override
  String toString() {
    return 'GetCurrenciesResponse(data: $data, message: $message, isSuccessful: $isSuccessful, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrenciesResponse &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, message, isSuccessful, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrenciesResponseCopyWith<_$_GetCurrenciesResponse> get copyWith =>
      __$$_GetCurrenciesResponseCopyWithImpl<_$_GetCurrenciesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCurrenciesResponseToJson(
      this,
    );
  }
}

abstract class _GetCurrenciesResponse implements GetCurrenciesResponse {
  const factory _GetCurrenciesResponse(
      {required final CurrencyData data,
      required final String message,
      required final bool isSuccessful,
      required final int result}) = _$_GetCurrenciesResponse;

  factory _GetCurrenciesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCurrenciesResponse.fromJson;

  @override
  CurrencyData get data;
  @override
  String get message;
  @override
  bool get isSuccessful;
  @override
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrenciesResponseCopyWith<_$_GetCurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) {
  return _CurrencyData.fromJson(json);
}

/// @nodoc
mixin _$CurrencyData {
  List<Currency> get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDataCopyWith<CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDataCopyWith<$Res> {
  factory $CurrencyDataCopyWith(
          CurrencyData value, $Res Function(CurrencyData) then) =
      _$CurrencyDataCopyWithImpl<$Res, CurrencyData>;
  @useResult
  $Res call({List<Currency> currencies});
}

/// @nodoc
class _$CurrencyDataCopyWithImpl<$Res, $Val extends CurrencyData>
    implements $CurrencyDataCopyWith<$Res> {
  _$CurrencyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDataCopyWith<$Res>
    implements $CurrencyDataCopyWith<$Res> {
  factory _$$_CurrencyDataCopyWith(
          _$_CurrencyData value, $Res Function(_$_CurrencyData) then) =
      __$$_CurrencyDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Currency> currencies});
}

/// @nodoc
class __$$_CurrencyDataCopyWithImpl<$Res>
    extends _$CurrencyDataCopyWithImpl<$Res, _$_CurrencyData>
    implements _$$_CurrencyDataCopyWith<$Res> {
  __$$_CurrencyDataCopyWithImpl(
      _$_CurrencyData _value, $Res Function(_$_CurrencyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$_CurrencyData(
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyData implements _CurrencyData {
  const _$_CurrencyData({required final List<Currency> currencies})
      : _currencies = currencies;

  factory _$_CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDataFromJson(json);

  final List<Currency> _currencies;
  @override
  List<Currency> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'CurrencyData(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyData &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      __$$_CurrencyDataCopyWithImpl<_$_CurrencyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDataToJson(
      this,
    );
  }
}

abstract class _CurrencyData implements CurrencyData {
  const factory _CurrencyData({required final List<Currency> currencies}) =
      _$_CurrencyData;

  factory _CurrencyData.fromJson(Map<String, dynamic> json) =
      _$_CurrencyData.fromJson;

  @override
  List<Currency> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCurrenciesRequest _$GetCurrenciesRequestFromJson(Map<String, dynamic> json) {
  return _GetCurrenciesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCurrenciesRequest {
  String get devKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrenciesRequestCopyWith<GetCurrenciesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrenciesRequestCopyWith<$Res> {
  factory $GetCurrenciesRequestCopyWith(GetCurrenciesRequest value,
          $Res Function(GetCurrenciesRequest) then) =
      _$GetCurrenciesRequestCopyWithImpl<$Res, GetCurrenciesRequest>;
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class _$GetCurrenciesRequestCopyWithImpl<$Res,
        $Val extends GetCurrenciesRequest>
    implements $GetCurrenciesRequestCopyWith<$Res> {
  _$GetCurrenciesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
  }) {
    return _then(_value.copyWith(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCurrenciesRequestCopyWith<$Res>
    implements $GetCurrenciesRequestCopyWith<$Res> {
  factory _$$_GetCurrenciesRequestCopyWith(_$_GetCurrenciesRequest value,
          $Res Function(_$_GetCurrenciesRequest) then) =
      __$$_GetCurrenciesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String devKey});
}

/// @nodoc
class __$$_GetCurrenciesRequestCopyWithImpl<$Res>
    extends _$GetCurrenciesRequestCopyWithImpl<$Res, _$_GetCurrenciesRequest>
    implements _$$_GetCurrenciesRequestCopyWith<$Res> {
  __$$_GetCurrenciesRequestCopyWithImpl(_$_GetCurrenciesRequest _value,
      $Res Function(_$_GetCurrenciesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devKey = null,
  }) {
    return _then(_$_GetCurrenciesRequest(
      devKey: null == devKey
          ? _value.devKey
          : devKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCurrenciesRequest implements _GetCurrenciesRequest {
  const _$_GetCurrenciesRequest({this.devKey = Endpoints.devKey});

  factory _$_GetCurrenciesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetCurrenciesRequestFromJson(json);

  @override
  @JsonKey()
  final String devKey;

  @override
  String toString() {
    return 'GetCurrenciesRequest(devKey: $devKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrenciesRequest &&
            (identical(other.devKey, devKey) || other.devKey == devKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, devKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrenciesRequestCopyWith<_$_GetCurrenciesRequest> get copyWith =>
      __$$_GetCurrenciesRequestCopyWithImpl<_$_GetCurrenciesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCurrenciesRequestToJson(
      this,
    );
  }
}

abstract class _GetCurrenciesRequest implements GetCurrenciesRequest {
  const factory _GetCurrenciesRequest({final String devKey}) =
      _$_GetCurrenciesRequest;

  factory _GetCurrenciesRequest.fromJson(Map<String, dynamic> json) =
      _$_GetCurrenciesRequest.fromJson;

  @override
  String get devKey;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrenciesRequestCopyWith<_$_GetCurrenciesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
