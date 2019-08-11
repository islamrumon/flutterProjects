import 'package:flutter/material.dart';
import 'package:weather_app13/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app13/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void initState() {
    super.initState();
    getLoacation();
  }

  void getLoacation() async{
    var weatherData = await WeatherModel().getLocation();
//    print(weatherData);
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(weatherData: weatherData);
    }));
//    print(data);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: SpinKitRotatingCircle(
         color: Colors.grey,
         size: 80,
       ),
      ),
    );
  }
}
