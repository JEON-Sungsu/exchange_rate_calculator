import 'package:exchange_rate_calculator/data/data_source/exchange_rate_api.dart';
import 'package:exchange_rate_calculator/data/model/conversion_rates_model.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate_model.dart';
import 'package:exchange_rate_calculator/data/repository/exchange_repository.dart';
import 'package:exchange_rate_calculator/data/repository/exchange_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  final ExchangeRepository _exchangeRepository =
      ExchangeRepositoryImpl(api: ExchangeRateApi());

  final List<String> _dropdownMenu = [];
  String _convertedMoney = '';
  ExchangeRateModel _exchangeRateModel = const ExchangeRateModel(
      lastUpdated: '',
      conversionRates: ConversionRatesModel(
        usd: 0,
        krw: 0,
        eur: 0,
        jpy: 0,
        cny: 0,
      ));
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  ExchangeRateModel get exchangeRateModel => _exchangeRateModel;
  List<String> get dropdownMenu => List.unmodifiable(_dropdownMenu);
  String get convertedMoney => _convertedMoney;
  TextEditingController get baseController => _baseController;
  TextEditingController get resultController => _resultController;

  void onSearch(String base, String conversion, num? baseMoney,
      num? conversionMoney) async {
    _exchangeRateModel = await _exchangeRepository.getExchangeRate(base);
    num conversionValue = _exchangeRateModel.conversionRates.toJson()[conversion];

    if (baseMoney != null) {
      _convertedMoney = (conversionValue * baseMoney).toString();
      if (baseMoney == -1) {
        resultController.text = '';
      } else {
        resultController.text = _convertedMoney;
      }
    }

    if (conversionMoney != null) {
      _convertedMoney = (conversionValue * conversionMoney).toString();
      if (conversionMoney == -1) {
        baseController.text = '';
      } else {
        baseController.text = _convertedMoney;
      }
    }
    notifyListeners();
  }

  void fetchData() async {
    final data = await _exchangeRepository.getExchangeRate('krw');
    data.conversionRates.toJson().forEach((key, value) {
      _dropdownMenu.add(key);
    });
    notifyListeners();
  }
}
