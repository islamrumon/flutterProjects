import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _textFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool button = false;
  bool active = false;
  String _fname;
  String _lname;
  String _email;
  String _password;

  void _submit(){
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(
          "Email : $_email,Password: $_password, LastNamr: $_lname, Firstname: $_fname");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Column(
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
                    "Register free today to get more from  The Telegraph",
                    style: TextStyle(
                        fontSize: 28,
                        color: primaryColor2,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Grenze-SemiBold"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Text(
                    "The Daily Telegraph, known online as The Telegraph, is a national British daily broadsheet newspaper published in London by Telegraph Media Group and distributed across the United Kingdom and internationally. It was founded by Arthur B. Sleigh in 1855 as Daily Telegraph & Courier.",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Grenze-Regular',
                        fontSize: 15,
                        height: 1),
                  ),
                ),
                //todo:here are the register form
                Container(
                  child: Form(
                    key: _formKey,
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
//                            controller: _textFieldController,
                            decoration: const InputDecoration(
                              labelText: 'First Name',
                              labelStyle: TextStyle(
                                  color: primaryColor2,
                                  fontWeight: FontWeight.bold),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            onSaved: (fname) {
                              _fname = fname;
                            },
                            validator: (fname) {
                              return fname.isEmpty
                                  ? 'First Name Is Required'
                                  : null;
                            },
                          ),
                          //Lastname
                          TextFormField(
//                            controller: _textFieldController,
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              labelStyle: TextStyle(
                                  color: primaryColor2,
                                  fontWeight: FontWeight.bold),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            onSaved: (lname) {
                              _lname = lname;
                            },
                            validator: (lname) {
                              return lname.isEmpty
                                  ? 'Last Name Is Required'
                                  : null;
                            },
                          ),
                          //email
                          TextFormField(
//                            controller: _textFieldController,
                            decoration: InputDecoration(
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
                            onSaved: (email) {
                              _email = email;
                            },
                            validator: (email) {
                              return email.length > 6 &&
                                      email.contains('@') &&
                                      email.contains('.')
                                  ? null
                                  : 'Valied Email Is Requered';
                            },
                          ),
                          //password
                          TextFormField(
//                            controller: _textFieldController,
                            decoration: InputDecoration(
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
                            onSaved: (pass) {
                              _password = pass;
                            },
                            validator: (pass) {
                              return pass.isEmpty && pass.length < 6
                                  ? 'Password menimum 6 charter or Is Requered'
                                  : null;
                            },
                            obscureText: _obscureText,
                          ),
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
                                    });
                                  },
                                  child: Container(
                                    child: Text(
                                      "I would like to receive by email offers, promotions and services from Telegraph Media Group Ltd and its group companies.",
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

                          //todo:submint button
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
                                "Create Account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  child: Text(
                    "For help, call our subscriptions team: (UK) 0800 332 020 (International) 0044 1622 335015 or email digitalservices@telegraph.co.uk",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Grenze-Regular',
                        fontSize: 15,
                        height: 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
