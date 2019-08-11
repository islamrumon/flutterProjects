import 'package:flutter/material.dart';
import 'package:weather_app13/utilities/constants.dart';
import 'package:weather_app13/services/weather.dart';
import 'city_screen.dart';
import 'package:weather_app13/services/weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.weatherData});
  final weatherData;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
WeatherModel weatherModel=new WeatherModel();
  int temp;
  String city;
  String weathericon;
  String message;
  @override
  void initState() {
    super.initState();
//    print(widget.weatherData);
    updateUI(widget.weatherData);

  }

  void updateUI(dynamic weatherData){
    setState(() {
      if(weatherData ==null){
        temp = 0;
        weathericon ="E";
        city = "Don't no";
        message = "Unable to Work Permition is Deney";
      }
      double t =weatherData['main']['temp'];
      temp = t.toInt();
      int c =weatherData['weather'][0]['id'];
      weathericon = weatherModel.getWeatherIcon(c);
      city =weatherData['name'];
      message = weatherModel.getMessage(temp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.9), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var wData = await weatherModel.getLocation();
                      updateUI(wData);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                   var nameCity =  await Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return CityScreen();
                      }));
                   //get the name
                   if(nameCity != null){
                     var data = await weatherModel.getLocationByCityName(nameCity);
                     updateUI(data);
                   }
                   print(nameCity);
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),

                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temp',
                      style: kTempTextStyle,
                    ),
                    Text(
                      '$weathericon',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "$message in $city",
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}