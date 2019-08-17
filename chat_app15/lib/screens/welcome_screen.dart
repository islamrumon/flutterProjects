import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../RoundButton.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Container(
                  child: TyperAnimatedTextKit(text: ['Natoks'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(
              color: Colors.blue,
              name: 'Sign In',
              onPress: (){
                Navigator.pushNamed(context, 'login_screen');
              },
            ),
            RoundButton(
              color: Colors.red,
              name: 'Sign Up',
              onPress: (){
                Navigator.pushNamed(context, 'registration_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}




