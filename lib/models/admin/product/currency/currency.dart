import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../constants/endpoints.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required int id,
    required String symbol,
    required String name,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class GetCurrenciesResponse with _$GetCurrenciesResponse {
  const factory GetCurrenciesResponse({
    required CurrencyData data,
    required String message,
    required bool isSuccessful,
    required int result,
  }) = _GetCurrenciesResponse;

  factory GetCurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCurrenciesResponseFromJson(json);
}

@freezed
class CurrencyData with _$CurrencyData {
  const factory CurrencyData({
    required List<Currency> currencies,
  }) = _CurrencyData;

  factory CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDataFromJson(json);
}

@freezed
class GetCurrenciesRequest with _$GetCurrenciesRequest {
  const factory GetCurrenciesRequest({
    @Default(Endpoints.devKey) String devKey,
  }) = _GetCurrenciesRequest;

  factory GetCurrenciesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetCurrenciesRequestFromJson(json);
}
