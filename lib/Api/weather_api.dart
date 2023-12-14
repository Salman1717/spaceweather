import 'dart:convert';
import "package:http/http.dart" as http;

class WeatherApi {
  static const String apiKey = 'your_api_key';

  Future<dynamic> fetchWeatherData(String city) async {
    final url = Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
