// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeRateModelImpl _$$ExchangeRateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeRateModelImpl(
      lastUpdated: json['lastUpdated'] as String,
      conversionRates: ConversionRatesModel.fromJson(
          json['conversionRates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExchangeRateModelImplToJson(
        _$ExchangeRateModelImpl instance) =>
    <String, dynamic>{
      'lastUpdated': instance.lastUpdated,
      'conversionRates': instance.conversionRates,
    };
