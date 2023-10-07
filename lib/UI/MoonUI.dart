import 'package:flutter/material.dart';
import '../Api/moon_api.dart';
import '../components/DataInfoRow.dart';
import '../components/search_bar.dart';

class MoonUI extends StatefulWidget {
  const MoonUI({Key? key}) : super(key: key);

  @override
  _MoonUIState createState() => _MoonUIState();
}

class _MoonUIState extends State<MoonUI> {
  final api = WeatherApi();
  String _city = 'New York'; // Default city
  String _moonRise = '';
  String _moonSet = '';

  // Function to fetch moonrise and moonset data
  Future<void> fetchMoonData() async {
    try {
      final moonData = await api.fetchMoonData(_city);
      setState(() {
        _moonRise = moonData['moonrise'].toString();
        _moonSet = moonData['moonset'];
      });
    } catch (e) {
      // Handle errors
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMoonData(); // Fetch moon data when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: 65),
              Text(
                "MOON PHASES",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16),


              SearchBart(
                city: _city,
                onCityChanged: (newCity) {
                  setState(() {
                    _city = newCity;
                  });
                },
                onRefreshWeather: () {
                  // Call fetchMoonData here to refresh moon data
                  fetchMoonData();
                },
              ),

              Text(
                "13 September, 2020",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 23),

              DataInfoRow(
                label1: "Moon Rise",
                data1: _moonRise,
                label2: "Moon Set",
                data2: _moonSet,
              ),
              SizedBox(height: 37),
              Text(
                "Waning Gibbous",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 10),
              Image.asset(
                "assets/Moon.png",
                width: 290,
                height: 290,
              )
            ],
          ),
        ),
      ),
    );
  }
}
