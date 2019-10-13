import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text("Setting Section"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Edition",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Text("International",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 11)),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Alerts",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Android Notification Settings",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding:
                EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(" Reader Mode",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(" A text-only view of the Newsfeed",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 12)),
                      ],
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding:
                EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(" Enable'This is CNN'",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(" A sound effect when open the app",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 12)),
                      ],
                    ),
                    Switch(
                      value: isSwitched3,
                      onChanged: (value) {
                        setState(() {
                          isSwitched3 = value;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 7, bottom: 7, left: 17, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Font size",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Text("Default",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 11)),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(" AutoPlay videos over Wi-Fi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(() {
                          isSwitched2 = value;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(" Play HD videos over Wi-Fi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Switch(
                      value: isSwitched4,
                      onChanged: (value) {
                        setState(() {
                          isSwitched4 = value;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Send Feedback",
                    style:
                    TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Privacy Policy",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Terms of Service",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text(" Ad Choices",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  )),
              child: Container(
                padding: EdgeInsets.only(left:14,right: 14,top: 16),
                child: Text(" Verson 6.3.1",
                    style:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 11)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
