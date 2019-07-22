import 'package:flutter/material.dart';
import 'quizz_data.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


QuizzData _quizzData=new QuizzData();
class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  //there are a list for icons
  List<Icon> scoreCount =[

  ];

//  List<String> questions =[
//    'natok one','natok tow','natok three','natok fore'
//  ];
//  List<bool> answers =[
//  false,true,true,false
//  ];

//  List<Questions> questions =[
//    Questions(q:'naotk one',a:true),
//    Questions(q:'naotk tow',a:false),
//    Questions(q:'naotk three',a:false),
//    Questions(q:'naotk for',a:true),
//  ];


  void theAnswer(bool ans){
   if(_quizzData.getAnswer() == ans){
     scoreCount.add(
       Icon(Icons.check,color: Colors.green,),
     );
   }else{
     scoreCount.add(
       Icon(Icons.close,color: Colors.red,),
     );
   }

   if(_quizzData.isFinished() == true){
     //show the alert
     Alert(
       context: context,
       title: 'Finished!',
       desc: 'You\'ve reached the end of the quiz.',
     ).show();
     _quizzData.reset();
     scoreCount=[];
   }
   _quizzData.nextQuestion();

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                _quizzData.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    letterSpacing: 2.0
                ),
              ),
            ),

          ),
          //this is for button
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                  color: Colors.green,
                  onPressed: (){
                    setState(() {
                      theAnswer(true);
                    });
                  },
                  child: Text(
                    'True',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  )),
            ),
          ),
          //another button
          Expanded(
            child: Padding(padding: EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: (){
                //TODO:Thes button work for false
                  setState(() {
                    theAnswer(false);
                  });
              },
                color: Colors.red,
                child: Text(
                  "False",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreCount,
            ),
          ),
        ],
      ),
    );
  }
}