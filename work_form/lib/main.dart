import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(Screens());
}

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(cursorColor: Colors.green, primaryColor: Colors.black),
      color: Colors.white,
      home: Scaffold(body: ContactScreen()),
    );
  }
}

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<String> via = ['natok 1', 'natok 2', 'natok 3', 'naotk 4', 'natok5'];
  List<String> vanue = [
    'Dhaka',
    'Ctg',
    'Kulna',
    'Barisal',
    'Sylete',
    'Chadpur'
  ];
  String selectVenue = 'Dhaka';
  String selectVia = 'natok 1';

  Map<Widget,bool> values={
    Icon(Icons.phone):false,
    Icon(Icons.card_travel):false,
    Icon(Icons.perm_data_setting):false,
    Icon(Icons.card_travel):false,
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
//      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(
                      "img/pe.jpeg",
                      width: size.width,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10,
                      bottom: 150,
                      left: 30,
                      right: 100,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                        child: Container(
                          color: Colors.black.withOpacity(0),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 138),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                          child: Icon(Icons.gavel),
                          color: Colors.green,
                          onPressed: () {
                            //Todo:There are the action
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                        CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage('img/rumon.jpg'),
                          foregroundColor: Colors.black,
                        ),
                        RaisedButton(
                          child: Icon(Icons.gavel),
                          color: Colors.red,
                          onPressed: () {
                            //Todo:There are the action
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                        ),
                      ],
                    ),
                  ),

              ],
            ),
          ), //this is top picture section
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Robiul Islma Rumon',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ), //this is profile name section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 29,
                  color: Colors.black26,
                ),
                Text(
                  'Dhaka',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
//          Divider(
//            color: Colors.grey,
//            indent: 20,
//            endIndent: 20,
//          ),

          //todo:there are the form
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Conecting Via',
                  style: TextStyle(color: Colors.green),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: via.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        this.selectVia = newValue;
                      });
                    },
                    value: selectVia,
                  ),
                ),

                Text(
                  'Vanue',
                  style: TextStyle(color: Colors.green),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: vanue.map((items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        this.selectVenue = newValue;
                      });
                    },
                    value: selectVenue,
                  ),
                ),

                //this is note input
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    onChanged: (note) {
                      print(note);
                    },
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.green),
                      labelText: 'Note',
                      focusColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

//           Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: values.keys.map((keys){
//                return CheckboxListTile(
//                  onChanged: (bool value){
//                     setState(() {
//                       values[keys] = value;
//                     });
//                  },
//                  value: values[keys],
//                  title: keys,
//                );
//              }).toList(),
//            ),

          //todo:button section
          ButtonTheme(
            height: 40,
            minWidth: size.width - 40,
            child: RaisedButton(
              color: Colors.green,
              child: Text(
                'Connect',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: 17,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
//              side: BorderSide(color: Colors.black54, width: 2.0),
              ),
              onPressed: () {},
            ),
          ),
          //todo:footer text area
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Meta Data Collected in the background',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Location : ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Exact GPS location',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
//                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Row(
//                mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Time : ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Full Date & Time',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
//                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
