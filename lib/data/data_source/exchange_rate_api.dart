import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as https;
import '../dto/exchange_rate_dto.dart';

class ExchangeRateApi {
  final https.Client _client;
  final String baseUrl = 'https://v6.exchangerate-api.com/v6';

  ExchangeRateApi({
    https.Client? client,
  }) : _client = client ?? https.Client();

  Future<ExchangeRateDto> getExchangeRateDto(String query) async {
    final apiKey = dotenv.get('API_KEY');
    final response = await _client
        .get(Uri.parse('$baseUrl/$apiKey/latest/${query.toUpperCase()}'));

    if (response.statusCode != 200) {
      throw Exception('통신에러 ${response.statusCode}');
    }
    return ExchangeRateDto.fromJson(jsonDecode(response.body));
  }
}

void main() async {
  ExchangeRateApi exchangeRateApi = ExchangeRateApi();
  final test = await exchangeRateApi.getExchangeRateDto('usd');
  print(test.toString());
}
