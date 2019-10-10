import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email;
  String _password;
  bool _obscureText = true;
  bool button = false;
  bool active = false;


  void _submit(){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();

      print("Email :$_email, password: $_password");

    }
  }
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
                  )),
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROGb5g-URGzxmIOepdrOYVYN1K1CG2gquQm2NNUE6sPSVDCphT',
                  width: size.width / 2.4,
                  alignment: Alignment.centerLeft,
                  height: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Text(
                  "Login in your Telegraph Account",
                  style: TextStyle(
                      fontSize: 28,
                      color: primaryColor2,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Grenze-SemiBold"),
                ),
              ),

              //todo:there are login card
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: Container(
                        margin:  EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: primaryColor2,
                                  value: button,
                                  onChanged: (a) {
                                    setState(() {
                                      button = a;
                                    });

                                  },
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      button = !button;
                                      print(button);
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
//                              controller: _textFieldController,
                              decoration:  InputDecoration(
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
                                print(email);
                                _email = email;
                              },
                              validator: (String email) {
                                return email.length < 6 &&
                                        email.contains('@') &&
                                        email.contains('.')
                                    ? null
                                    : 'Valied Email Is Requered';
                              },
                            ),
                            //password
                            TextFormField(
//                              controller: _textFieldController,
                              decoration:  InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: primaryColor2,
                                    fontWeight: FontWeight.bold),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              onSaved: ( pass) {
                                print(pass);
                                _password = pass;
                              },
                              validator: ( pass) {
                                return pass.isEmpty && pass.length < 6
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
                        onPressed: () {
                          setState(() {
                            _submit();
                          });
                        },
                        color: primaryColor2,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
