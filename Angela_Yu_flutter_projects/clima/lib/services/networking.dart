import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String _url;
  NetworkHelper(this._url) {
    // String url =
    //     'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
  }

  Future getData() async {
    http.Response response = await http.get(Uri.parse(this._url));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
