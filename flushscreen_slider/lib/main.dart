import 'package:flutter/material.dart';
import 'items.dart';
import 'video.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Carousel(),
    );
  }
}
class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

//  final items= <Icon>[
//    Icon(Icons.email),
//    Icon(Icons.phone_android),
//    Icon(Icons.comment),
//    Icon(Icons.share),
//    Icon(Icons.thumb_up),
//  ];

//  VideoPlayerController _controller;
//  void initState(){
//    super.initState();
//    _controller = VideoPlayerController.network(
//        'https://www.youtube.com/embed/6wNFJIbTxNk'
//    )
//      ..initialize().then((_) {
//        setState(() {
//
//        });
//      });
//  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: items.length,
          child: Builder(
              builder: (BuildContext context)=>Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
              child: Column(
                children: <Widget>[
                  Expanded(
                  child: TabBarView(children: items)
                  ),
                  TabPageSelector(
                    selectedColor: Colors.red,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: RaisedButton(
                      child: Text('Login',style: TextStyle(
                        fontSize: 20,
                      ),),
                      color: Colors.red,
                      colorBrightness: Brightness.dark,
                      focusColor: Colors.green,
                      elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                      onPressed: (){
                        TabController controler =DefaultTabController.of(context);
                        if(!controler.indexIsChanging){
                          controler.animateTo(items.length-1);
                        }
//                        print(controler.indexIsChanging);
//                        print(items.length);
//
//                        Navigator.push(context, MaterialPageRoute(
//                            builder: (BuildContext conttext)=> video()));
                      },
                    ),
                  )
                ],
              ),
              )
          )
      ),

    );
  }
}
