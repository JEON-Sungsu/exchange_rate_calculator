import 'package:exchange_rate_calculator/data/dto/exchange_rate_dto.dart';
import 'package:exchange_rate_calculator/data/model/conversion_rates_model.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate_model.dart';

extension ExchangeMapper on ExchangeRateDto {
  ExchangeRateModel toExchangeRateModel() {
    return ExchangeRateModel(
      lastUpdated: timeLastUpdateUtc ?? '',
      conversionRates: conversionRates?.toConversionRateModel() ?? {} as ConversionRatesModel
    );
  }
}

extension ConversionMapper on ConversionRatesDto {
  ConversionRatesModel toConversionRateModel() {
    return ConversionRatesModel(
      usd: usd ?? 0,
      krw: krw ?? 0,
      eur: eur ?? 0,
      jpy: jpy ?? 0,
      cny: cny ?? 0,
    );
  }
}
