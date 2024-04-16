import '../model/exchange_rate_model.dart';

abstract interface class ExchangeRepository {
  Future<ExchangeRateModel> getExchangeRate(String query);
}
