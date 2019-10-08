import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool vibrate =true;
  @override
  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
    return  Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: primaryColor1,
          title: Text('Setting'),
        ),
        body: SafeArea(
          child: Container(
//            height: size.height,
//            width: size.width,
            color: primaryColor2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //todo:Account section
                Container(
                  margin: EdgeInsets.only(top:20),
                  height: 60,
                  decoration: BoxDecoration(
                    color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Account",style: settingTextStyle),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
                //todo:vibrate feedback
                Container(
                  margin: EdgeInsets.only(top:20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Vibrate feedback",style: settingTextStyle),
                        Checkbox(
                          value: vibrate,
                          activeColor: Colors.white,
                          checkColor: primaryColor2,
                          onChanged: (bool val){
                            setState(() {
                              print(val);
                              vibrate =val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                //todo: Mail Section
                Container(
                  margin: EdgeInsets.only(top:20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 28),
                    child: InkWell(
                      onTap: (){
                        _launchURL("islamrumon420@gmail.com");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Email US",style: settingTextStyle),
                              Text("islamrumon420@gmail.com",style: settingTailTExtStyle,),
                            ],
                          ),
                          Icon(Icons.email,color: Colors.white,size: 20 ,),
                        ],
                      ),
                    ),
                  ),
                ),
                //todo:call section
                Container(
                  margin: EdgeInsets.only(top:5,bottom: 10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 28),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          _launchURL("01685755707");
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Call US",style: settingTextStyle),
                              Text("01685755707",style: settingTailTExtStyle,),
                            ],
                          ),
                          Icon(Icons.phone,color: Colors.white,size: 20 ,),
                        ],
                      ),
                    ),
                  ),
                ),
                //todo:text
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text("The launch method takes a string argument containing a URL. This URL can be formatted using a number of different URL schemes. The supported URL schemes depend on the underlying platform and installed apps.",style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Grenze-ExtraLight'),),
                ),
                //todo:Acknowledgements
                Container(
                  margin: EdgeInsets.only(top:10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Acknowledgements",style: settingTextStyle),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
                //todo:terms
                Container(
                  margin: EdgeInsets.only(top:10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Acknowledgements",style: settingTextStyle),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
                //todo:privacy
                Container(
                  margin: EdgeInsets.only(top:0),
                  height: 60,
                  decoration: BoxDecoration(
                      color: primaryColor1
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Acknowledgements",style: settingTextStyle),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
                //footer
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text("@ Telegraph Media Group \n Version: 0.9",style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'Grenze-ExtraLight'),),
                ),
              ],
            ),
          ),
        ),
      );

  }
}
