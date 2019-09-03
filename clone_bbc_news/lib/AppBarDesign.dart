import 'package:flutter/material.dart';
import 'AppBarIcons.dart';
import 'DrawerList.dart';
import 'cat.dart';
import 'class/SearchBar.dart';

class AppBarDesign extends StatefulWidget {
  @override
  _AppBarDesignState createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  appBarIcon _selectedChoice = choices[0];

  void _select(String route) {
    setState(() {
      print(route);
    });

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/bbc-news-icon-80x80.png',
                fit: BoxFit.cover,
                height: 45.0,
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                _select(choices[0].title);
              },
              icon: IconButton(
                icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: (){
               showSearch(context: context, delegate: DataSearch());
              },
              ),
            ),
            PopupMenuButton<appBarIcon>(
                itemBuilder: (BuildContext context){
                  return choices.skip(1).map((appBarIcon choice){
                    return PopupMenuItem<appBarIcon>(
                      value: choice,
                      child: FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(choice.title,style: TextStyle(
                              fontSize: 18
                          ),),
                        ),
                        onPressed: (){
                          _select(choice.title);
                        },
                      ),
                    );
                  }).toList();
                }
            )
          ],
          bottom: TabBar(
            onTap: (index){
              _select(index.toString());
            },
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text("Top Stories"),
                ),
              ),
              Tab(
                child: Container(
                  child: Text("Video"),
                ),
              ),
              Tab(
                child: Container(
                  child: Text("My News"),
                ),
              ),
              Tab(
                child: Container(
                  child: Text("Popular"),
                ),
              ),
              Tab(
                child: Container(
                  child: Text("Live"),
                ),
              ),

            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return  DrawerList(listOfTiles[index]);
              },
              itemCount: listOfTiles.length,
            ),
          ),
        ),
      ),
    );
  }
}