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
  String fname;
  String lname;
  String email;
  String password;
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
                            controller: _textFieldController,
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
                            onSaved: (String fname) {
                              setState(() {
                                print(fname);
                                this.fname = fname;
                              });
                            },
                            validator: (String fname) {
                              return fname.isEmpty
                                  ? 'First Name Is Required'
                                  : null;
                            },
                          ),

                          //Lastname
                          TextFormField(
                            controller: _textFieldController,
                            decoration: const InputDecoration(
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
                            onSaved: (String lname) {
                              setState(() {
                                print(lname);
                                this.lname = lname;
                              });
                            },
                            validator: (String lname) {
                              return lname.isEmpty
                                  ? 'Last Name Is Required'
                                  : null;
                            },
                          ),

                          //email
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
                              child: Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
