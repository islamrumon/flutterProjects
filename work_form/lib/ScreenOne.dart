import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
  String note;
  String city;
  String country;

  // TODO: ? How to implemnet this way to list and implement it Widget
//  List<List<bool,String>> selector = [
//    [false, Icon(FontAwesomeIcons.filePdf), 'Select 1'],
//    [true, Icon(FontAwesomeIcons.wordpress), 'Select 2'],
//    [true, Icon(FontAwesomeIcons.music), 'Select 2'],
//    [false, Icon(FontAwesomeIcons.gavel), 'Select 4'],
//    [false, Icon(FontAwesomeIcons.expand), 'Select 5'],
//    [true, Icon(FontAwesomeIcons.motorcycle), 'Select 6'],
//  ];

  List<String> selectorStrign=[
    'Select 1','Select 2','Select 2','Select 4','Select 5','Select 6'
  ];
  List<bool> selectorAction=[
    false,true,true,false,true,false
  ];
  List<Icon> selectorIcon=[
    Icon(FontAwesomeIcons.filePdf,size: 34,
      color: Colors.blueAccent,),Icon(FontAwesomeIcons.wordpress,size: 34,
      color: Colors.blueAccent,), Icon(FontAwesomeIcons.music,size: 34,
      color: Colors.blueAccent,),
    Icon(FontAwesomeIcons.gavel,size: 34,
      color: Colors.blueAccent,),Icon(FontAwesomeIcons.expand,size: 34,
      color: Colors.blueAccent,),Icon(FontAwesomeIcons.motorcycle,size: 34,
      color: Colors.blueAccent,),
  ];
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
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
                            color: Colors.lightGreen,
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

              //todo:this is form section
              Container(
                padding: EdgeInsets.all(14.0),
//                color: Colors.black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //TODO:Connecting via DropDown Padding or Row
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Conecting Via',
                        style: TextStyle(color: Colors.lightGreen),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 14.0, right: 0),
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 1.0,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xFFBDBDBD),
                                            width: 2.0))),
                              ),
                              isExpanded: true,
                              items: via.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 24,
                          ),
                          onPressed: () {
                            print(size.width - 72);
                          },
                        ),
                      ],
                    ),

                    //TODO:City or Country Forms
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                onChanged: (city) {
                                  print(city);
                                  this.city = city;
                                },
                                decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: Colors.lightGreen),
                                  labelText: 'City',
                                  focusColor: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: size.width / 2,
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                onChanged: (country) {
                                  print(country);
                                  this.country = country;
                                },
                                decoration: InputDecoration(
                                  labelStyle:
                                      TextStyle(color: Colors.lightGreen),
                                  labelText: 'Country',
                                  focusColor: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //TODO:Vanue DropDown Padding or Row
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Vanue',
                        style: TextStyle(color: Colors.lightGreen),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 8, right: 0),
                            child: DropdownButton<String>(
                              underline: Container(
                                height: 1.0,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xFFBDBDBD),
                                            width: 2.0))),
                              ),
                              isExpanded: true,
                              items: vanue.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 24,
                          ),
                          onPressed: () {
                            print(size.width - 72);
                          },
                        ),
                      ],
                    ),

                    //TODO:This is note filed
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        onChanged: (note) {
                          print(note);
                          this.note = note;
                        },
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.lightGreen),
                          labelText: 'Note',
                          focusColor: Colors.black,
                          hintText: 'Discussed something importent!',
                        ),
                      ),
                    ),

                    //todo:there are select icon section how to do it
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Share',
                        style: TextStyle(color: Colors.lightGreen),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 140.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: selectorStrign.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectorAction[index] = !selectorAction[index];
                                  print(selectorAction[index]);
                                });
                              },
                              child: Container(
                                height: 120,
                                width: size.width / 4 - 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 3.0,
                                    color: selectorAction[index] == true
                                        ? Colors.grey
                                        : Colors.lightGreen,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
//                                   Icon(FontAwesomeIcons.check, value1 == true ? size: 10: size:0,) : null,
                                    //TODO:If you Show the picture so ancomment that
        //                              Image(image: AssetImage('img/w.jpg'),fit: BoxFit.contain,alignment: Alignment.center),
                                  selectorIcon[index],
                                      Text(
                                        selectorStrign[index],
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    //todo: app footer section Padding 1, 2
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: ButtonTheme(
                        height: 40,
                        minWidth: size.width - 40,
                        child: RaisedButton(
                          color: Colors.lightGreen,
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
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Container(
//child: InkWell(
//onTap: (){
//setState(() {
//value1 = !value1;
//});
//},
//child: Container(
//height: 100,
//width: size.width /4 - 10,
//decoration: BoxDecoration(
//border: Border.all(
//width: 2.0,
//color: value1 == true ? Colors.pink : Colors.green,
//),
//borderRadius: BorderRadius.all(Radius.circular(20.0)),
//),
//child: Padding(
//padding: const EdgeInsets.all(10.0),
//child: Column(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
//children: <Widget>[
////                                   Icon(FontAwesomeIcons.check, value1 == true ? size: 10: size:0,) : null,
////                                   Image(image: AssetImage('img/rumon.jpg'),fit: BoxFit.contain,alignment: Alignment.center),
//Icon(FontAwesomeIcons.filePdf,size: 34,color: Colors.yellow,),
//Text('Instraction Clip',textAlign: TextAlign.center,),
//],
//),
//),
//),
//),
//),
