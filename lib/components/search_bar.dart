import 'package:flutter/material.dart';

class SearchBart   extends StatelessWidget {
  final String city;
  final Function(String) onCityChanged;
  final VoidCallback onRefreshWeather;

  const SearchBart({
    required this.city,
    required this.onCityChanged,
    required this.onRefreshWeather,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 87,
      left: 18,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              width: 275,
              height: 43,
              child: Expanded(
                child: TextField(
                  onChanged: onCityChanged,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    labelText: 'Enter a city name',
                    labelStyle: const TextStyle(color: Colors.white),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: onRefreshWeather,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
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
    );
  }
}
