import 'package:flutter/material.dart';
import 'weather_api.dart';
import 'package:intl/intl.dart';

class WeatherInfo extends StatefulWidget {
  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  WeatherApi _api = WeatherApi();
  String _city = ''; // Replace this with your desired city

  String _temperature = '';
  String _humidity = '';
  String _day = '';
  String _country = '';
  String _weatherCondition = '';
  String _currentDate = '';
  String _currentTime = '';

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
      final timestamp = weatherData['dt'];
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      final formattedDate = DateFormat.yMMMMd().format(dateTime);
      final formattedTime = DateFormat.jm().format(dateTime);
      setState(() {
        _temperature = (weatherData['main']['temp'] - 273.15).toStringAsFixed(1);
        _humidity = weatherData['main']['humidity'].toString();
        _weatherCondition = weatherData['weather'][0]['description'];
        _day = _getDayOfWeek(DateTime.now().weekday);
        _country = weatherData['sys']['country'];
        _currentTime = formattedTime;
        _currentDate = formattedDate;
      });
    } catch (e) {
      print('Error fetching weather data: $e');
    }
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
                  "Earth",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _city = value;
                          });
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          labelText: 'Enter a city name',
                          labelStyle: TextStyle(color: Colors.white),
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: _refreshWeather,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white.withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Image.asset(
                        'assets/search.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: 390,
                      height: 150,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.2),
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
                        "$_weatherCondition",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
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
                        style: TextStyle(
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
                        style: TextStyle(
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
                        style: TextStyle(
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
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 165,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        Positioned(
                          top: 26,
                          left: 18,
                          child: Text(
                            "Time",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 53,
                          child: Text(
                            _currentTime,
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 165,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        Positioned(
                          top: 26,
                          left: 28,
                          child: Text(
                            "UV Index",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 63,
                          child: Text(
                            "Na",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 107,
                          right: 38,
                          child: Text(
                            "Good    ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Explore SolarSystem :",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/Earth.png",
                  width: 320,
                  height: 292,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
