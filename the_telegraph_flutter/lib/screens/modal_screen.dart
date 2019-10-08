import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';

class ModalScreen extends StatefulWidget {
  @override
  _ModalScreenState createState() => _ModalScreenState();
}

class _ModalScreenState extends State<ModalScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height /2.5 ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/image/Screenshot_21.png',fit: BoxFit.cover,),
          ),
          ButtonTheme(
            height: 40,
            minWidth: size.width,
            child: RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: primaryColor2,
              child: Text("CONTINUE",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
