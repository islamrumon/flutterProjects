import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContant.dart';

const buttomHight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Colors.blueGrey;

//TODO:this is enum exampal
enum Gender{
  male,
  female,
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Gender selectGender;

//  Color maleCardColor = activeCardColor;
//  Color femaleCardColor = activeCardColor;

  // 1= male,2= female
//  void change(Gender gender){
//    setState(() {
//      if(gender ==Gender.male){
//        if(maleCardColor == activeCardColor){
//          maleCardColor = Colors.blueGrey;
//          femaleCardColor = activeCardColor;
//        }else{
//          maleCardColor= activeCardColor;
//        }
//      }
//      if(gender == Gender.female){
//        if(femaleCardColor == activeCardColor){
//          femaleCardColor = Colors.blueGrey;
//          maleCardColor= activeCardColor;
//        }else{
//          femaleCardColor = activeCardColor;
//        }
//      }
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                    myOnPress: (){
                      setState(() {
                 selectGender = Gender.male;
                      });
                    },
                    color_: selectGender == Gender.male ? inactiveCardColor:activeCardColor,
                    childCard: IconContant(
                      FontAwesomeIcons.male,
                      "Mail"
                    ),
                  ),

              ),
              Expanded(
                  child: ReusableCard(
                    myOnPress: (){
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    //TODO:Using ternery Operator exampal is cool
                      color_: selectGender == Gender.female ?inactiveCardColor:activeCardColor,
                  childCard: IconContant(
                    FontAwesomeIcons.female,
                    "Female"
                  ),
                  ),


              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard( color_: activeCardColor)
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard( color_: activeCardColor)
              ),
              Expanded(
                child: ReusableCard( color_: activeCardColor)
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:10.0),
          color: Colors.redAccent,
          width: double.infinity,
          height: buttomHight,
        )
      ],
    );
  }
}

