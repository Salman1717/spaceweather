import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  static const String apiKey = '05d09d1ca9f44701e6bf845956166856';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04';

  Future<Map<String, dynamic>> fetchWeatherData(String city) async {
    final url = Uri.parse('$baseUrl&appid=$apiKey');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  fetchMoonData(String city) {}
}
