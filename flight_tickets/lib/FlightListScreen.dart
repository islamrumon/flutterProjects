import 'package:flutter/material.dart';
import 'CustomScreenClipper.dart';
class FlightListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Result"),
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
          ),
          onTap:(){ Navigator.pop(context);},
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          FlightListTopPart(),
          FlightListButtomPart(),
        ],
      ),
    );
  }
}

class FlightListButtomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class FlightListTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomScreenClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent]),
            ),
            height: 160.0,
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 20.0),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("(Dhaka)",style: TextStyle(fontSize: 16.0,color: Colors.grey),),
                        Divider(color: Colors.black, height: 18,),
                        Text("Bangladesh",style: TextStyle(fontSize: 18.0,color: Colors.black),)
                      ],
                    ),
                    Icon(Icons.import_export,color: Colors.black,)
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
