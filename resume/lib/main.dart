import 'package:flutter/material.dart';
import 'helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resume.dart';
import 'package:url_launcher/url_launcher.dart';
import 'CallsAndMessagesService.dart';

Helper _helper = new Helper();

void main() {
  setupLocator();
  runApp(Screens());
//runApp(Resume());
}

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: FullScreen(),
    );
  }
}

class FullScreen extends StatefulWidget {



  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  final String number = "01685755707";
  final String email = "islamrumon420@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/img.jpg'),
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8), BlendMode.dstATop),
              alignment: Alignment.topCenter),
        ),
        constraints: BoxConstraints.expand(),

        //here the Profile image like round
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: CircleAvatar(
                    radius: 120.0,
                    backgroundImage: AssetImage('images/rumon.jpg'),
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _helper.name,
                  Divider(
                    color: Colors.blue,
                    indent: 16,
                    endIndent: 16,
                    height: 2.0,
                  ),
                  Center(
                    child: FlatButton.icon(
                        onPressed: () {
                          _service.sendEmail(email);
                        },
                        icon: Icon(Icons.email,color: Colors.red,),
                        label: Text('islamrumon420@gmail.com')),
                  ),
                Center(
                  child: FlatButton.icon(
                      onPressed: () {
//                        _service.call(number)
                      _service.call(number);
                      }, icon: Icon(FontAwesomeIcons.phone,color: Colors.green,), label: Text('01685755707')),
                ),
                  _helper.social,
                ],
              ),
            ),
            Column(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 3, top: 10, right: 100, left: 0),
                      child: ButtonTheme(
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.redAccent,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Resume()));
                          },
                          hoverColor: Colors.pinkAccent,
                          elevation: 8.0,
                          splashColor: Colors.blueAccent,
                          hoverElevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                            side: BorderSide(color: Colors.black54, width: 2.0),
                          ),
                          child: Text('show resume',
                              style: TextStyle(
                                letterSpacing: 3,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.end),
                        ),
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
