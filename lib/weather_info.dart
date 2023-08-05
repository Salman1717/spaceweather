import 'package:flutter/material.dart';
import 'weather_api.dart';

class WeatherInfo extends StatefulWidget {
  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  WeatherApi _api = WeatherApi();
  String _city = ''; // Replace this with your desired city

  String _temperature = '';
  String _airQuality = '';
  String _humidity = '';
  String _day = '';

  String _weatherCondition = '';

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
      setState(() {
        _temperature = (weatherData['main']['temp'] - 273.15).toStringAsFixed(1);
        _airQuality = weatherData['airQuality'].toString(); // Replace with actual air quality data if available
        _humidity = weatherData['main']['humidity'].toString();
        _weatherCondition = weatherData['weather'][0]['description'];
        _day = _getDayOfWeek(DateTime.now().weekday);
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
    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.transparent,
      body:SingleChildScrollView(
        child: Container(
          child: Column(

            mainAxisSize: MainAxisSize.min,
            children: [

              TextField(
                onChanged: (value) {
                  setState(() {
                    _city = value; // Update the city variable with user input
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter a city name',
                ),
              ),
              ElevatedButton(
                onPressed: _refreshWeather,
                child: Text('Refresh'),
              ),

              TextField(
                onChanged: (value) {
                  // The user input as a string will be available in 'value'
                  print(value);
                },
              ),


              const Text("Earth",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),),

              const SizedBox(height: 30 ),

              Stack(
                children:[
                  Container(
                      width: 390,
                      height: 150,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.2))
                  ),
                  Positioned(
                      top: 15,
                      left: 15,
                      child:
                      Image.asset('assets/suncloud.png',
                        width: 68,
                        height: 64,
                      )),

                  Positioned(
                      top:82,
                      left: 15,
                      child: Text(
                          "$_weatherCondition",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )
                      )),

                  Positioned(
                      top: 105,
                      left: 15,
                      child: Text(
                          "Precipitation: 100%",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          )
                      )),

                  Positioned(
                      top: 126,
                      left: 15,
                      child: Text(
                          "Humidity: $_humidity",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          )
                      )),

                  Positioned(
                      top: 28,
                      right: 24,
                      child: Text(
                          "$_temperature",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                          )
                      )),

                  Positioned(
                      top: 95,
                      right: 8,
                      child: Text(
                          "19th July, $_day",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          )
                      )),

                  Positioned(
                      top: 127,
                      right: 8,
                      child: Text(
                          "Ratnagiri, Maharashtra",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )
                      )),

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
                                color: Colors.white.withOpacity(0.2))
                        ),

                        Positioned(
                            top: 26,
                            left: 18 ,
                            child: Text(
                                "Air Quality",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                )
                            )),

                        Positioned(
                            top: 60,
                            left: 53,
                            child: Text(
                                "$_airQuality",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.orange,
                                )
                            )),


                        Positioned(
                            top: 107,
                            left: 35,
                            child: Text(
                                "Moderate",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.orange,
                                )
                            )),
                      ]
                  ),

                  Stack(
                      children:[
                        Container(
                            width: 165,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(0.2))
                        ),
                        Positioned(
                            top: 26,
                            left: 28 ,
                            child: Text(
                                "UV Index",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                )
                            )),

                        Positioned(
                            top: 60,
                            left: 63,
                            child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.green,
                                )
                            )),


                        Positioned(
                            top: 107,
                            right: 38,
                            child: Text(
                                "Good    ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                )
                            )),

                      ]
                  ),
                ],

              ),
              SizedBox(height: 20,),
              Text(
                  "Explore SolarSystem :",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,

                  )
              ),
              SizedBox(height: 20,),

              Image.asset("assets/Earth.png",
                width:320,
                height: 292,)
            ],
          ),
        ),
      ),
    ),
    );
  }
}
