import 'package:exchange_rate_calculator/data/model/conversion_rates_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_model.freezed.dart';

part 'exchange_rate_model.g.dart';

@freezed
class ExchangeRateModel with _$ExchangeRateModel {
  const factory ExchangeRateModel({
    required String lastUpdated,
    required ConversionRatesModel conversionRates
  }) = _ExchangeRateModel;

  factory ExchangeRateModel.fromJson(Map<String, Object?> json) => _$ExchangeRateModelFromJson(json);
}
