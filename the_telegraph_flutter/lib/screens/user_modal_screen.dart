import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:the_telegraph_flutter/screens/login_screen.dart';
import 'package:the_telegraph_flutter/screens/register_screen.dart';
class UserModalScreen extends StatefulWidget {
  @override
  _UserModalScreenState createState() => _UserModalScreenState();
}

class _UserModalScreenState extends State<UserModalScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text("Register for free access My telegraph ",style: TextStyle(fontSize: 28,color:primaryColor2,fontWeight: FontWeight.bold,fontFamily: "Grenze-SemiBold" ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("For help, call our subscriptions team: (UK) 0800 332 020 (International) 0044 1622 335015 or email digitalservices@telegraph.co.uk",style: TextStyle(color: Colors.black,fontFamily: 'Grenze-Regular',fontSize: 16,height: 1),),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: ButtonTheme(
                  height: 50,
                  minWidth: size.width/1.8,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },
                    color: primaryColor2,
                    child: Text("Register",style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: ButtonTheme(
                  height: 50,
                  minWidth: size.width/3.5,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    color: primaryColor2,
                    child: Text("Login",style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
