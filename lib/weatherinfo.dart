import 'package:flutter/material.dart';


class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:
        SafeArea(
        top: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Container(
       child: Column(

          mainAxisSize: MainAxisSize.min,
          children: [

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
                    "Thunder Shower",
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
                    "Humidity: 92%",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    )
                )),

                Positioned(
                    top: 28,
                    right: 24,
                    child: Text(
                    "27℃",
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    )
                )),

                Positioned(
                    top: 95,
                    right: 8,
                    child: Text(
                        "19th July, Wednesday",
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
                    "51*",
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
                            "5",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.orange,
                            )
                        )),


                    Positioned(
                        top: 107,
                        right: 38,
                        child: Text(
                            "Moderate",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                            )
                        )),

                ]
                ),
              ],

            ),
          ],
        ),
      ),
      ),
        ),
  );
  }
}



