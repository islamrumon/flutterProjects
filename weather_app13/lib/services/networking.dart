import 'package:http/http.dart' as http ;
import 'dart:convert';

class Network{

 String url;

 Network(this.url);

Future getData() async{
   try{
     http.Response response = await http.get(url);
//     print(jsonDecode(response.body));
     return jsonDecode(response.body);
   }catch(e){
     print(e);
     return e;
   }
}
// Future<void> getWeatherData() async {
//
//   if(response.statusCode == 200){
//     return jsonDecode(response.body);
////     temp =decodedData['main']['temp'];
////     condition = decodedData['weather'][0]['description'];
////     city =decodedData['name'];
//////     print(temp);
//////     print(condition);
//////     print(city);
//////     print(response.body);
//   }else{
//     print(response.statusCode);
//   }
// }


}