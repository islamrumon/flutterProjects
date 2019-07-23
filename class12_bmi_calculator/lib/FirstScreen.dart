import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContant.dart';
import 'Result.dart';
import 'MyButtomWidget.dart';
import 'calculaet.dart';

const buttomHight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Colors.pink;
const kHight = TextStyle(
  color: Colors.grey,
  fontSize: 16.0,
);

//TODO:this is enum exampal
enum Gender {
  male,
  female,
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Gender selectGender;
  double height = 140;
  double wight = 40;
  double age = 18;
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
                  myOnPress: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  color_: selectGender == Gender.male
                      ? inactiveCardColor
                      : activeCardColor,
                  childCard: IconContant(FontAwesomeIcons.male, "Mail"),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  myOnPress: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  //TODO:Using ternery Operator exampal is cool
                  color_: selectGender == Gender.female
                      ? inactiveCardColor
                      : activeCardColor,
                  childCard: IconContant(FontAwesomeIcons.female, "Female"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ReusableCard(
          color_: activeCardColor,
          childCard: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "HEIGHT",
                style: kHight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  Text(
                    "$height",
                    style: TextStyle(color: Colors.grey, fontSize: 44),
                  ),
                  Text("cm",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
              Slider(
                  value: height.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Colors.pink,
                  inactiveColor: Colors.grey,
                  onChanged: (double values) {
                    setState(() {
                      height = values.roundToDouble();
                    });
                  }),
            ],
          ),
        )),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      color_: activeCardColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Weight",
                            style: kHight,
                          ),
                          Text(
                            wight.toString(),
                            style: TextStyle(fontSize: 34),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundiconButton(
                                icon: FontAwesomeIcons.plus,
                                myOnPress: () {
                                  setState(() {
                                    wight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundiconButton(
                                icon: FontAwesomeIcons.minus,
                                myOnPress: () {
                                  setState(() {
                                    wight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ))),
              Expanded(
                child: ReusableCard(
                  color_: activeCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Age",
                        style: kHight,
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundiconButton(
                            icon: FontAwesomeIcons.plus,
                            myOnPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundiconButton(
                            icon: FontAwesomeIcons.minus,
                            myOnPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        new MyButtomWidget(
          myOnTab: (){
            //pass the data in class
            calculat ca=new calculat(this.wight,this.height);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
              bmiResult: ca.calculatBMI(),
              getAdvice: ca.getAdvice(),
              getResult: ca.getResult(),
            ),));
          },
          text: "Calculator",
        ),
      ],
    );
  }
}


class RoundiconButton extends StatelessWidget {
  RoundiconButton({@required this.icon, this.myOnPress});
  final IconData icon;
  final Function myOnPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      onPressed: myOnPress,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.pink,
    );
  }
}
