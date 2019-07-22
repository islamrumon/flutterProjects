import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



void main(){
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  @override

  void playSound(int serial){
    final AudioCache player = AudioCache();

    player.play('note$serial.wav');
  }

  Expanded buildSound({Color color, int num}){
    return Expanded(
      child: FlatButton(
          onPressed: (){
            playSound(num);
          },
        color: color,
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Center(
             child: Text('Xylophone'),
           ),
         ),
         body: SafeArea(
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                 buildSound(color: Colors.red,num: 1),
                 buildSound(color: Colors.pink,num: 2),
                 buildSound(color: Colors.greenAccent,num: 3),
                 buildSound(color: Colors.green,num: 4),
                 buildSound(color: Colors.orange,num: 5),
                 buildSound(color: Colors.yellow,num: 6),
                 buildSound(color: Colors.deepPurple,num: 7)
               ],

             )
         ),
       ),

    );
  }
}
