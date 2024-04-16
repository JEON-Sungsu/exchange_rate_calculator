import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversion_rates_model.freezed.dart';

part 'conversion_rates_model.g.dart';

@freezed
class ConversionRatesModel with _$ConversionRatesModel {
  const factory ConversionRatesModel({
    required num usd,
    required num krw,
    required num eur,
    required num jpy,
    required num cny,
  }) = _ConversionRatesModel;

  factory ConversionRatesModel.fromJson(Map<String, Object?> json) => _$ConversionRatesModelFromJson(json);
}