import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                width: size.width,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      )
                  ),
                ),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROGb5g-URGzxmIOepdrOYVYN1K1CG2gquQm2NNUE6sPSVDCphT',
                  width: size.width /2.4,
                  alignment: Alignment.centerLeft,
                  height: 25,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:10,bottom: 8),
                child: Text("Login in your Telegraph Account",style: TextStyle(fontSize: 28,color:primaryColor2,fontWeight: FontWeight.bold,fontFamily: "Grenze-SemiBold" ),),
              ),

             //todo:there are login card
            ],
          ),
        ),
      ),
    );
  }
}
