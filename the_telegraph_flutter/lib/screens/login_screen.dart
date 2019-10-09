import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool _obscureText = true;
  bool button = false;
  bool active = false;
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
              Card(
                elevation: 5.0,
                child: Form(
                  child: Column(
                    children: <Widget>[
                      //checker
                      Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: primaryColor2,
                            value: button,
                            onChanged: (bool a) {
                              setState(() {
                                button = a;
                              });
                            },
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  button = !button;
                                  if(_formKey.currentState.validate()){
                                    active = button;
                                  }
                                  print(button);
                                });
                              },
                              child: Container(
                                child: Text(
                                  "Digital Account or subscrive",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Grenze-Medium',
                                      height: 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _textFieldController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: primaryColor2,
                              fontWeight: FontWeight.bold),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        onSaved: (String email) {
                          setState(() {
                            print(email);
                            this.email = email;
                          });
                        },
                        validator: (String email) {
                          return email.length < 6 &&
                              email.contains('@') &&
                              email.contains('.')
                              ? 'Valied Email Is Requered'
                              : null;
                        },
                      ),
                      //password
                      TextFormField(
                        controller: _textFieldController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: primaryColor2,
                              fontWeight: FontWeight.bold),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
//                            suffixIcon: IconButton(
//                              icon: _obscureText ? Icon(FontAwesomeIcons.solidEye) :Icon(FontAwesomeIcons.solidEyeSlash),
//                              onPressed: (){
//                                _obscureText != value;
//                              },
//                            ),
                        ),
                        onSaved: (String pass) {
                          setState(() {
                            print(pass);
                            this.password = pass;
                          });
                        },
                        validator: (String pass) {
                          return pass.isNotEmpty && pass.length < 6
                              ? 'Password menimum 6 charter or Is Requered'
                              : null;
                        },
                        obscureText: _obscureText,
                      ),




                    ],
                  ),
                ),
              ),
              //submint button
              Container(
                height: 50,
                width: size.width,
                child: RaisedButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      active = true;
                    }
                  },
                  color: active ? primaryColor2:primaryColor2.withOpacity(0.5) ,
                  child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
