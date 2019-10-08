import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                child: Text("Register free today to get more from  The Telegraph",style: TextStyle(fontSize: 28,color:primaryColor2,fontWeight: FontWeight.bold,fontFamily: "Grenze-SemiBold" ),),
              ),
              Padding(
                padding: EdgeInsets.only(top:10,bottom: 15),
                child: Text("The Daily Telegraph, known online as The Telegraph, is a national British daily broadsheet newspaper published in London by Telegraph Media Group and distributed across the United Kingdom and internationally. It was founded by Arthur B. Sleigh in 1855 as Daily Telegraph & Courier.",style: TextStyle(color: Colors.black,fontFamily: 'Grenze-Regular',fontSize: 15,height: 1),),
              ),
               //todo:here are the register form
              Padding(
                padding: EdgeInsets.only(top:10,bottom: 15),
                child: Text("For help, call our subscriptions team: (UK) 0800 332 020 (International) 0044 1622 335015 or email digitalservices@telegraph.co.uk",style: TextStyle(color: Colors.black,fontFamily: 'Grenze-Regular',fontSize: 15,height: 1),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
