import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';//audioplayers: ^0.13.1

//AudioPlayer audioPlayer = AudioPlayer();
//
//void main() => runApp(MaterialApp(
//  debugShowCheckedModeBanner: false,
//  title: "I am Rich",
//
//  home: Scaffold(
//    backgroundColor: Colors.white,
//    appBar: AppBar(
//      title: new Center(child: Text("i Am rich"),),
//      backgroundColor: Colors.blueGrey[900],
//    ),
//    body:  Center(
//      child: Image.asset("images/s.jpg"),
//    ),
////    floatingActionButton: FloatingActionButton(
////      onPressed: playLocal(),
////      tooltip: 'Play',
////      child: Icon(Icons.play_circle_filled),
////    ),
//
//
//),
//)
//);
//
//playLocal() async {
//  int result = await audioPlayer.play("assets/audio.mp3", isLocal: true);
//  if(result == 1){
//
//  }
//}



void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,   
  home: ExampleApp(),
));

class Sabrina extends StatefulWidget {
  @override
  _SabrinaState createState() => _SabrinaState();
}

class _SabrinaState extends State<Sabrina> {
  @override
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  Widget build(BuildContext context) {
    return Container();
  }
}


class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() =>
      new _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  String localFilePath;

  Widget _tab(List<Widget> children) {

    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[

            ClipOval(
              child: Center(
                child: Image.asset("images/s.jpg",fit: BoxFit.cover,),

              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Center(
              child: Container(

               padding: EdgeInsets.all(16.0),
                child: Column(
                  children: children
                      .map((w) => Container(child: w, padding: EdgeInsets.all(2)))
                      .toList(),
                ),

              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {

    return ButtonTheme(
        minWidth: 48.0,
        focusColor: Colors.pink,
        buttonColor: Colors.pink,
        //child: RaisedButton(child: Text(txt), onPressed: onPressed)
      child: FlatButton(
          onPressed: onPressed,
          child: Image.asset("images/but.png",height: 80,width: 80,),
       ),
    );
        
  }

  Widget localAsset() {

    return _tab([
      Text("Nothing's Gonna Change My Love for You"),
      _btn('Love You', () => audioCache.play('audio.mp3'))
    ]);
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 1,
      child: Scaffold(

        appBar: AppBar(

          title: Center(child: Text("Sabrina Lover Association"),),
        ),
        body: Center(
          child: TabBarView(
            children: [localAsset()],
          ),
        ),

      ),
    );
  }
}

