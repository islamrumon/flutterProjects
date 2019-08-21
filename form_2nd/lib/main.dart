import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'MySeparator.dart';
import 'package:flutter_multiselect/flutter_multiselect.dart';
import 'ReuseSelectorButton.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.green,
      cursorColor: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
    home: Screen(),
  ));
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 8,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 24,
            color: Colors.black,
            onPressed: () {
              //Todo: top appbar icon button
            },
          ),
        ],
      ),
      body: SndScreen(),
    );
  }
}

class SndScreen extends StatefulWidget {
  @override
  _SndScreenState createState() => _SndScreenState();
}

class _SndScreenState extends State<SndScreen> {
  int male, female, other = 0;
  String name;
//  Object CountryCode;

  void CountryCode(Object object) {
    String code = "$object";
    print(code);
  }

  List<String> selectorStrign = [
    'Select 1',
    'Select 2',
    'Select 2',
    'Select 4',
    'Select 5',
    'Select 6'
  ];
  List<bool> selectorAction = [false, true, true, false, true, false];
  List<Icon> selectorIcon = [
    Icon(
      FontAwesomeIcons.filePdf,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.wordpress,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.music,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.gavel,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.expand,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.motorcycle,
      size: 34,
      color: Colors.blueAccent,
    ),
  ];

  List _myActivities;
  String _myActivitiesResult;
  final formKey = new GlobalKey<FormState>();

//todo:?????this is the selactor images button i can't implement it in widget How to do it
//  List<Map> selactor = [
//    {'name':'Select 1','action':true,'icon':Icon(FontAwesomeIcons.filePdf,size: 34,color: Colors.blueAccent,)},
//    {'name':'Select 2','action':false,'icon':Icon(FontAwesomeIcons.wordpress,size: 34,color: Colors.blueAccent,)},
//    {'name':'Select 3','action':true,'icon':Icon(FontAwesomeIcons.music,size: 34,color: Colors.blueAccent,)},
//    {'name':'Select 4','action':false,'icon':Icon(FontAwesomeIcons.gavel,size: 34,color: Colors.blueAccent,)},
//    {'name':'Select 5','action':true,'icon':Icon(FontAwesomeIcons.expand,size: 34,color: Colors.blueAccent,)},
//    {'name':'Select 6','action':false,'icon':Icon(FontAwesomeIcons.motorcycle,size: 34,color: Colors.blueAccent,)},
//  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }

  setTheGender(value) {
    setState(() {
//      setValue = $val;
      if (value == toString()) {
        print(name);
      } else {
        print(value);
        value == 1 ? male = 1 : male = 0;
        value == 2 ? female = 1 : female = 0;
        value == 3 ? other = 1 : other = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //get the current device size
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //todo:this is top edit persona text design
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 8),
            child: Text(
              'Edit Persona',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          //todo:this is profile pic or % avater
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('img/rumon.jpg'),
                foregroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('img/loding.gif'),
                foregroundColor: Colors.black,
              )
            ],
          ),
          //todo:this is copy from main presona text and icon
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.solidCheckCircle,
                  color: Colors.green,
                  size: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Copy From Main Persona',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //todo:this is button for select male female or others
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setTheGender(1);
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image(
                          image: AssetImage(
                            'img/male.png',
                          ),
                          width: size.width / 8,
                        ),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(FontAwesomeIcons.solidCheckCircle,
                          color: male == 1 ? Colors.green : Colors.black12),
//                    Radio(
//                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                      value: 1,
//                      groupValue: setValue,
//                      onChanged: (val) {
//                        setTheGender(val);
//                      },
//                      activeColor: Colors.green,
//                    ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setTheGender(2);
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image(
                          image: AssetImage(
                            'img/female.png',
                          ),
                          width: size.width / 8,
                        ),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(FontAwesomeIcons.solidCheckCircle,
                          color: female == 1 ? Colors.green : Colors.black12),
//                    Radio(
//                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                      value: 1,
//                      groupValue: setValue,
//                      onChanged: (val) {
//                        setTheGender(val);
//                      },
//                      activeColor: Colors.green,
//                    ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setTheGender(3);
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image(
                          image: AssetImage(
                            'img/others.png',
                          ),
                          width: size.width / 8,
                        ),
                      ),
                      Text(
                        'Others',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(FontAwesomeIcons.solidCheckCircle,
                          color: other == 1 ? Colors.green : Colors.black12),
//                    Radio(
//                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                      value: 1,
//                      groupValue: setValue,
//                      onChanged: (val) {
//                        setTheGender(val);
//                      },
//                      activeColor: Colors.green,
//                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //todo: There are all input field
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12.0, top: 10),
            child: Column(
              children: <Widget>[
                //todo:this is fullname or company
                Container(
                  height: 160,
//            color: Colors.green,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.deepPurpleAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Align(
//                         alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 10,
                              ),
                              Text(
                                ' There are some text ',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
//                           icon: Icon(Icons.star),
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },

//                         validator: (name) => name.length <4 ? 'Up to 4 Letter': null,
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Company',
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },

//                         validator: (name) => name.length <4 ? 'Up to 4 Letter': null,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        //todo : email

                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
//                           icon: Icon(Icons.star,size: 10,color:Colors.red),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },
                        ),
                        //todo : phone
//                        Text('Phone Number',style: TextStyle(
//                          color: Colors.green,
//                          fontSize: 14,
//                        ),),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ))),
                              width: 90,
                              height: 59,
                              child: CountryCodePicker(
                                showFlag: true,
                                showOnlyCountryWhenClosed: false,
                                onChanged: CountryCode,
                                alignLeft: true,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                  ),
                                  focusColor: Colors.green,
                                ),
                                onChanged: (name) {
                                  name = name;
                                  setTheGender(name);
                                  print(name);
                                },
                              ),
                            ),
                          ],
                        ),
                        //todo website
                        TextField(
                          keyboardType: TextInputType.url,
                          decoration: InputDecoration(
                            labelText: 'WebSite',
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },
                        ),
                        //todo publishar
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Publishar',
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },
                        ),

                        //Todo:There are the fixed Scrol Container with checkbox search
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                            height: 150,
                            width: size.width,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.deepPurpleAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child:  ListView(
                              children: <Widget>[
                                MultiSelectFormField(
                                  autovalidate: false,
                                  titleText: 'Contrey',
                                  validator: (value) {
                                    if (value == null || value.length == 0) {
                                      return 'Please select one or more options';
                                    }
                                  },
                                  dataSource: [
                                    {
                                      "display": "Bangladesh",
                                      "value": "1",
                                    },
                                    {
                                      "display": "Pakisthan",
                                      "value": "2",
                                    },
                                    {
                                      "display": "India",
                                      "value": "3",
                                    },
                                    {
                                      "display": "Turki",
                                      "value": "4",
                                    },
                                    {
                                      "display": "France",
                                      "value": "5",
                                    },
                                    {
                                      "display": "Natok ",
                                      "value": "6",
                                    },
                                    {
                                      "display": "Naotk 2",
                                      "value": "7",
                                    },
                                    {
                                      "display": "Natok 3",
                                      "value": "8",
                                    },
                                    {
                                      "display": "Climbing",
                                      "value": "Climbing",
                                    },
                                    {
                                      "display": "Walking",
                                      "value": "Walking",
                                    },
                                    {
                                      "display": "Swimming",
                                      "value": "Swimming",
                                    },
                                    {
                                      "display": "Soccer Practice",
                                      "value": "Soccer Practice",
                                    },
                                    {
                                      "display": "Baseball Practice",
                                      "value": "Baseball Practice",
                                    },
                                    {
                                      "display": "Football Practice",
                                      "value": "Football Practice",
                                    },
                                  ],
                                  textField: 'display',
                                  valueField: 'value',
                                  okButtonLabel: 'OK',
                                  cancelButtonLabel: 'CANCEL',
                                  // required: true,
                                  hintText: 'Please choose one or more',
                                  value: _myActivities,
                                  onSaved: (value) {
                                    if (value == null) return;
                                    setState(() {
                                      _myActivities = value;
                                    });
                                  },
                                ),
                              ],

                            ),
                          ),
                        ),
                        //todo: city
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'City',
                            labelStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                            ),
                            focusColor: Colors.green,
                          ),
                          onChanged: (name) {
                            name = name;
                            setTheGender(name);
                          },
                        ),
                        //todo:this is the border design
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 28.0, bottom: 18.0),
                          child: Flex(
                            direction: Axis.vertical,
                            children: <Widget>[
                              const MySeparator(
                                color: Colors.deepPurpleAccent,
                                height: 3,
                              )
                            ],
                          ),
                        ),
                        //todo:Interest this is the multipal checkbox
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,bottom: 10),
                          child: Container(
                            height: 100,
                            width: size.width,
                            color: Colors.white,
//                            decoration: BoxDecoration(
//                              border: Border.all(color: Colors.deepPurple,width: 2),
//                              borderRadius: BorderRadius.all(Radius.circular(5.0))
//                            ),
                            child: ListView(
                              children: <Widget>[
                                MultiSelectFormField(
                                  autovalidate: false,
                                  titleText: 'Contrey',
                                  validator: (value) {
                                    if (value == null || value.length == 0) {
                                      return 'Please select one or more options';
                                    }
                                  },
                                  dataSource: [
                                    {
                                      "display": "Bangladesh",
                                      "value": "1",
                                    },
                                    {
                                      "display": "Pakisthan",
                                      "value": "2",
                                    },
                                    {
                                      "display": "India",
                                      "value": "3",
                                    },
                                    {
                                      "display": "Turki",
                                      "value": "4",
                                    },
                                    {
                                      "display": "France",
                                      "value": "5",
                                    },
                                    {
                                      "display": "Natok ",
                                      "value": "6",
                                    },
                                    {
                                      "display": "Naotk 2",
                                      "value": "7",
                                    },
                                    {
                                      "display": "Natok 3",
                                      "value": "8",
                                    },
                                    {
                                      "display": "Climbing",
                                      "value": "Climbing",
                                    },
                                    {
                                      "display": "Walking",
                                      "value": "Walking",
                                    },
                                    {
                                      "display": "Swimming",
                                      "value": "Swimming",
                                    },
                                    {
                                      "display": "Soccer Practice",
                                      "value": "Soccer Practice",
                                    },
                                    {
                                      "display": "Baseball Practice",
                                      "value": "Baseball Practice",
                                    },
                                    {
                                      "display": "Football Practice",
                                      "value": "Football Practice",
                                    },
                                  ],
                                  textField: 'display',
                                  valueField: 'value',
                                  okButtonLabel: 'OK',
                                  cancelButtonLabel: 'CANCEL',
                                  // required: true,
                                  hintText: 'Please choose one or more',
                                  value: _myActivities,
                                  onSaved: (value) {
                                    if (value == null) return;
                                    setState(() {
                                      _myActivities = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        //todo:Current requerment
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Current Requerment',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.green),
                            ),
                          ),
                        ),
                        Container(
                          //   height: 200.0,
                          margin: EdgeInsets.only(top: 10),
                          decoration: new BoxDecoration(
                              border: new Border.all(color: Colors.grey,width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                          ),

                          child: new TextField(
                              maxLines: 4,
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  // height: 2.0,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                hintText: "There is no data",
//                contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                              )),
                        ),
                        //todo:this is the border design 2
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 28.0, bottom: 18.0),
                          child: Flex(
                            direction: Axis.vertical,
                            children: <Widget>[
                              const MySeparator(
                                color: Colors.deepPurpleAccent,
                                height: 3,
                              )
                            ],
                          ),
                        ),
                        //todo:File upload there are select icon section how to do it
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Files Uploaded',
                              style: TextStyle(color: Colors.lightGreen),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[0] = !selectorAction[0];
                                  print(selectorAction[0]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/0.jpg'),
                              ),
                              name: selectorStrign[0],
                              active: selectorAction[0],
                            ),
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[1] = !selectorAction[1];
                                  print(selectorAction[1]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/1.jpg'),
                              ),
                              name: selectorStrign[1],
                              active: selectorAction[1],
                            ),
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[2] = !selectorAction[2];
                                  print(selectorAction[2]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/2.jpg'),
                              ),
                              name: selectorStrign[2],
                              active: selectorAction[2],
                            ),
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[3] = !selectorAction[3];
                                  print(selectorAction[3]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/3.jpg'),
                              ),
                              name: selectorStrign[3],
                              active: selectorAction[3],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[4] = !selectorAction[4];
                                  print(selectorAction[4]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/4.jpg'),
                              ),
                              name: selectorStrign[4],
                              active: selectorAction[4],
                            ),
                            ReuseSelectorButton(
                              size: size,
                              onTap: (){
                                setState(() {
                                  selectorAction[5] = !selectorAction[5];
                                  print(selectorAction[5]);
                                });
                              },
                              image: Image(
                                image: AssetImage('img/5.jpg'),
                              ),
                              name: selectorStrign[5],
                              active: selectorAction[5],
                            ),
                            ReuseSelectorButton(
                              size: size,
                              onTap: null,
                              icon: Icon(FontAwesomeIcons.solidAngry,color: Colors.green,),
                              name: 'Add new File',
                              active: true,
                            ),

                          ],
                        ),
                        //todo: app footer section Padding 1, 2
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 14.0, bottom: 24.0),
                          child: ButtonTheme(
                            height: 40,
                            minWidth: size.width - 40,
                            child: RaisedButton(
                              color: Colors.lightGreen,
                              child: Text(
                                'Save Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 17,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
