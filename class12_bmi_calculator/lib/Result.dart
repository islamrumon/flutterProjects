import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'ReusableCard.dart';
import 'MyButtomWidget.dart';

FirstScreen fs = new FirstScreen();
const activeCardColor = Color(0xFF1D1E33);

class ResultPage extends StatelessWidget {

  //constractor for gating data
  ResultPage({@required this.bmiResult,this.getAdvice,this.getResult});

    final double bmiResult;
  final String getResult;
  final String getAdvice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Text(
            "Result panal",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ReusableCard(
                color_: activeCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      getResult,
                      textAlign: TextAlign.center,
                      style: TextStyle(color:
                      bmiResult <=18 ? Colors.green:Colors.red, fontSize: 40),
                    ),

                    // show the number
                    Text(
                      bmiResult.toStringAsFixed(1),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    //message
                    Text(
                      getAdvice,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              child: MyButtomWidget(
                text: "Re-Calculat",
                myOnTab: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
