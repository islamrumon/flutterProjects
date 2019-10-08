import 'package:url_launcher/url_launcher.dart';

class CallServices{

  void phone (String phone){
    launch("tel://$phone");
  }
  
  void email(String mail){
    launch("mailto:$mail");
  }
}