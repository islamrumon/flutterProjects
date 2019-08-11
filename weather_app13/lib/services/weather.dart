import 'package:weather_app13/services/location.dart';
import 'package:weather_app13/services/networking.dart';

class WeatherModel {
  String  appkey ="51c7f0a0f8bdfb93dd4a42d5f3d66430";
  Location loc=new Location();

  Future<dynamic> getLocationByCityName(String cityname) async{
    await loc.getLocation();
    Network network=new Network('https://api.openweathermap.org/data/2.5/weather?q=${cityname}&appid=$appkey&units=metric');
    var data = await network.getData();
    return data;
  }



 Future<dynamic> getLocation() async{
   await loc.getLocation();
   Network network=new Network('https://api.openweathermap.org/data/2.5/weather?lat=${loc.lat}&lon=${loc.long}&appid=$appkey&units=metric');
   var data = await network.getData();
   return data;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}