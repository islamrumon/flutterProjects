import 'package:flutter/material.dart';
import 'productlistscreen.dart';

void main()=>runApp(
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TopBaner(),
  ),
);

class TopBaner extends StatefulWidget {
  @override
  _TopBanerState createState() => _TopBanerState();
}

class _TopBanerState extends State<TopBaner> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: new Text("REST Api"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,


      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.pink,
            height: 200,
          ),


          //another container

          Container(
            color: Colors.blue,
            height: 200,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 50,
                  child: Text("Natoks"),
                  color: Colors.white,
                ),

                //this is another container

                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    height: 80,
                    width: 180,
                    child: Text("Natok2",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),


          //another Container
          Container(
            color: Colors.amber,
            height: 200,
          ),


          //another container
          Container(
            color: Colors.deepOrangeAccent,
            height: 200,
          )
        ],
      ),
      //this is drawer
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: new Text("Rumon"),
                accountEmail: new Text("@Gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black87,
                )
            ),
            ListTile(
              title: new Text("Products"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListView()));
              },
              leading: Icon(Icons.add),
            ),
          ],
        ),
      ),

    );

  }
}
