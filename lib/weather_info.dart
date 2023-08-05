import 'package:flutter/material.dart';
import 'weather_api.dart';

class WeatherInfo extends StatefulWidget {
  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  WeatherApi _api = WeatherApi();
  String _city = 'Ratnagiri'; // Replace this with your desired city

  String _temperature = '';
  String _airQuality = '';
  String _humidity = '';

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    try {
      final weatherData = await _api.fetchWeatherData(_city);
      setState(() {
        _temperature = (weatherData['main']['temp'] - 273.15).toStringAsFixed(1);
        _airQuality = weatherData['airQuality'].toString(); // Replace with actual air quality data if available
        _humidity = weatherData['main']['humidity'].toString();
      });
    } catch (e) {
      print('Error fetching weather data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Temperature: $_temperature °C',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Air Quality: $_airQuality',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Humidity: $_humidity %',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
