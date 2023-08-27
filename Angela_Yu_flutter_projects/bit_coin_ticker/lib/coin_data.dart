import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const apiKey = '2615BDEA-2286-4A71-9E4F-7380B4AF0F93';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<dynamic> internet(String from, String to) async {
    https: //rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=2909A105-39C6-4D86-8347-259AC0A02A4B
    http.Response response = await http.get(Uri.parse(
        'https://rest.coinapi.io/v1/exchangerate/$from/$to?apikey=$apiKey'));
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      return jsonResponse;
    } else {
      return -1;
    }
  }
}
