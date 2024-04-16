import 'package:exchange_rate_calculator/data/data_source/exchange_rate_api.dart';
import 'package:exchange_rate_calculator/data/dto/exchange_rate_dto.dart';
import 'package:exchange_rate_calculator/data/dto/exchange_rate_mapper.dart';
import 'package:exchange_rate_calculator/data/model/exchange_rate_model.dart';
import 'package:exchange_rate_calculator/data/repository/excahnge_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeRateApi _api;

  const ExchangeRepositoryImpl({
    required ExchangeRateApi api,
  }) : _api = api;

  @override
  Future<ExchangeRateModel> getExchangeRate(String query) async {
    final ExchangeRateDto dto = await _api.getExchangeRateDto(query);
    return dto.toExchangeRateModel();
  }
}
