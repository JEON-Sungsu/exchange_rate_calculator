// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_rates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversionRatesModelImpl _$$ConversionRatesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversionRatesModelImpl(
      usd: json['usd'] as num,
      krw: json['krw'] as num,
      eur: json['eur'] as num,
      jpy: json['jpy'] as num,
      cny: json['cny'] as num,
    );

Map<String, dynamic> _$$ConversionRatesModelImplToJson(
        _$ConversionRatesModelImpl instance) =>
    <String, dynamic>{
      'usd': instance.usd,
      'krw': instance.krw,
      'eur': instance.eur,
      'jpy': instance.jpy,
      'cny': instance.cny,
    };
