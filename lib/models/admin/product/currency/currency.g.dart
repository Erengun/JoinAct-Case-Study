// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      id: json['id'] as int,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
    };

_$_GetCurrenciesResponse _$$_GetCurrenciesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetCurrenciesResponse(
      data: CurrencyData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      isSuccessful: json['isSuccessful'] as bool,
      result: json['result'] as int,
    );

Map<String, dynamic> _$$_GetCurrenciesResponseToJson(
        _$_GetCurrenciesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'isSuccessful': instance.isSuccessful,
      'result': instance.result,
    };

_$_CurrencyData _$$_CurrencyDataFromJson(Map<String, dynamic> json) =>
    _$_CurrencyData(
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CurrencyDataToJson(_$_CurrencyData instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };

_$_GetCurrenciesRequest _$$_GetCurrenciesRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetCurrenciesRequest(
      devKey: json['devKey'] as String? ?? Endpoints.devKey,
    );

Map<String, dynamic> _$$_GetCurrenciesRequestToJson(
        _$_GetCurrenciesRequest instance) =>
    <String, dynamic>{
      'devKey': instance.devKey,
    };
