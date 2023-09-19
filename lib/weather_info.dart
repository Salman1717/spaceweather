import 'package:flutter/material.dart';
import 'Api/weather_api.dart';
import 'package:intl/intl.dart';
import'UI/search_bar.dart';
import 'components/DataInfoRow.dart';

class WeatherInfo extends StatefulWidget {
  const WeatherInfo({super.key});

  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  WeatherApi _api = WeatherApi();
  String _city = 'Ratnagiri';
  String _temperature = '';
  String _humidity = '';
  String _day = '';
  String _country = '';
  String _weatherCondition = '';
  String _currentDate = '';
  String _currentTime = '';
  String _tempmin ='';
  String _tempmax ='';
  String _visible = '';
  String _pressure ='';
  String _windSpeed ='';

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  void _refreshWeather() {
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    try {
      final weatherData = await _api.fetchWeatherData(_city);
      final int _timezoneOffset = weatherData['timezone'];
      final visibility  = weatherData['visibility'];
      final cvisibile =  visibility / 1000 ;
      final timestamp = weatherData['dt'];
      final utcDateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
      final localDateTime = utcDateTime.add(Duration(seconds: _timezoneOffset));
      final formattedDate = DateFormat.yMMMMd().format(localDateTime);
      final formattedTime = DateFormat.jm().format(localDateTime);

      setState(() {
        _temperature = (weatherData['main']['temp'] - 273.15).toStringAsFixed(1);
        _humidity = weatherData['main']['humidity'].toString();
        _weatherCondition = weatherData['weather'][0]['description'];
        _day = _getDayOfWeek(localDateTime.weekday);
        _country = weatherData['sys']['country'];
        _tempmin = (weatherData['main']['temp_min'] - 273.15).toStringAsFixed(1);
        _tempmax = (weatherData['main']['temp_max'] - 273.15).toStringAsFixed(1);
        _currentTime = formattedTime;
        _currentDate = formattedDate;
        _visible = cvisibile.toString() ;
        _pressure = weatherData['main']['pressure'].toString();
        final windSpeed = weatherData['wind']['speed'];
        _windSpeed = windSpeed.toString();

      });
    } catch (e) {
      _showErrorDialog('Error fetching weather data: $e');
    }
  }




  void _showErrorDialog(String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text(
          'Error',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
        content: Text(
          error,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.redAccent,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }


  String _getDayOfWeek(int day) {
    switch (day) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Weather",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                SearchBart(
                  city: _city,
                  onCityChanged: (newCity) {
                    setState(() {
                      _city = newCity;
                    });
                  },
                  onRefreshWeather: _refreshWeather,
                ),
                const SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: 380,
                      height: 150,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Image.asset(
                        'assets/suncloud.png',
                        width: 68,
                        height: 64,
                      ),
                    ),
                    Positioned(
                      top: 82,
                      left: 15,
                      child: Text(
                        _weatherCondition,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 105,
                      left: 15,
                      child: Text(
                        "Precipitation: 100%",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 126,
                      left: 15,
                      child: Text(
                        "Humidity: $_humidity",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 29,
                      right: 8,
                      child: Text(
                        "$_temperature℃ ",
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      right: 8,
                      child: Text(
                        "$_currentDate. $_day",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 127,
                      right: 8,
                      child: Text(
                        "$_city, $_country",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                DataInfoRow(
                  label1: "Time",
                  data1: _currentTime,
                  label2: "Visibility",
                  data2: "$_visible KM",
                ),
                const SizedBox(height: 20,),
                DataInfoRow(
                  label1: "MinTemp",
                  data1: "$_tempmin℃",
                  label2: "MaxTemp",
                  data2: "$_tempmax℃ ",
                ),
                const SizedBox(height: 20,),
                DataInfoRow(
                  label1: "Pressure",
                  data1: "$_pressure hPa",
                  label2: "Wind",
                  data2: "$_windSpeed m/s",
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

