import 'package:exchange_rate_calculator/data/data_source/exchange_rate_api.dart';
import 'package:exchange_rate_calculator/data/model/conversion_rates_model.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate_model.dart';
import 'package:exchange_rate_calculator/data/repository/excahnge_repository.dart';
import 'package:exchange_rate_calculator/data/repository/exchange_repository_impl.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  final ExchangeRepository _exchangeRepository =
      ExchangeRepositoryImpl(api: ExchangeRateApi());

  ExchangeRateModel _state = ExchangeRateModel(
      lastUpdated: '',
      conversionRates: ConversionRatesModel(
        usd: 0,
        krw: 0,
        eur: 0,
        jpy: 0,
        cny: 0,
      ));

  ExchangeRateModel get state => _state;

  void onSearch(String query) async {
    _state = await _exchangeRepository.getExchangeRate(query);
    notifyListeners();
  }
}
