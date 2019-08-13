import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


String url ='https://www.facebook.com/shortcut.rumon.1';
class Helper {
  //this is for name
  Text name = Text(
    "Robilu Islam Rumon",
    style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        letterSpacing: 3,
        fontStyle: FontStyle.italic),
  );


  //this is social media icon
  Widget social = Padding(
    padding: EdgeInsets.only(left: 50,top: 0,right: 50,bottom: 0),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      IconButton(
        icon: Icon(FontAwesomeIcons.facebook,color: Colors.blue,),
        onPressed: () async{

            if(await canLaunch(url)){
            await  launch(url);
            }else{
            throw 'Could not launch $url';
            }

        },
        color: Colors.blue,
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.twitter,color: Colors.blue,),
        onPressed: null,
        color: Colors.blue,
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.googlePlus,color: Colors.red,),
        onPressed: null,
        color: Colors.blue,
      )
    ],
    ),
  );


  Widget chipes(String title,Color _color){
    return Text('$title',style: TextStyle(
        color: _color,
        letterSpacing: 2.0
    ));
  }

  String careerObjectives="To Work as a Programmer and utilize my skills of designing and coding towards managing programmingprojects. To get an opportunity at making valuable contributions towards achieving project and organizational goals.";


}
