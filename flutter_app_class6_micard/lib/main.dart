import 'package:flutter/material.dart';

//main function
void main(){
  runApp(
    OurApp()
  );
}

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //there are the profile pic
                CircleAvatar(
                 radius: 90.0,
                  backgroundImage: AssetImage('images/rumon.jpg'),
                ),
                Text(
                  'Rumon',
                   style: TextStyle(
                     fontFamily: 'Pacifico',
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                ),

                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.white30,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 170,
                  child: Divider(
                    color: Colors.white70,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: ListTile(
                   leading: Icon(
                     Icons.phone,
                     color: Colors.teal,
                   ),
                    title: Text(
                      '+8801685755707',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title:Text(
                        "islamrumon420@gmail.com",
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0
                        ),
                      ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}


//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: natok(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class natok extends StatefulWidget {
////this is constractor
//  natok ({Key key, this.title}) :super(key: key);
//  final String title;
//  @override
//  _natokState createState() => _natokState();
//}
//
//class _natokState extends State<natok> {
//
//  int i = 0;
//
//  void _inclrement(){
//    setState((){
//    i++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//
//            Text("This is Increment value"),
//            Text(
//              '$i',
//
//            )
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//          onPressed: _inclrement,
//        tooltip: "natok ",
//        child: Icon(Icons.add),
//      ),
//    );
//  }
//}
//
//
