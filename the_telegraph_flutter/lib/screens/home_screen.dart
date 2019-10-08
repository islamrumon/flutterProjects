import 'package:flutter/material.dart';
import 'package:the_telegraph_flutter/screens/news_screen.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:the_telegraph_flutter/helper/category_list.dart';
import 'package:the_telegraph_flutter/screens/setting_screen.dart';
import 'package:the_telegraph_flutter/screens/single_news_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<Widget> drawerList = List<Widget>();
  List<Tab> tabbarList = List<Tab>();
  List<Widget> tabViewPage = List<Widget>();
  TabController _tabController;

  int selectItem = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //here the init tabController
    _tabController = new TabController(length: catList.length, vsync: this);
    setState(() {
      drawerTile();
      tabBar();
      tabpage();
    });
  }

  //todo:this is dynamic drawerList
  void drawerTile() {
    //add setting bar
    drawerList.add(Container(
      decoration: BoxDecoration(
        color: primaryColor2,
        border: Border(bottom: BorderSide(color: Color(0xff0E878A))),
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
            },
          ),
          FlatButton(
            child: Text(
              "Edit",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    ));
    drawerList.add(Container(
      decoration: BoxDecoration(
        color: primaryColor1,
        border: Border(bottom: BorderSide(color: Colors.white70)),
      ),
      height: 50,
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Icon(
              Icons.assignment,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("My Feed", style: drawerTextStyle),
            ),
          ],
        ),
      ),
    ));
    drawerList.add(Container(
      height: 50,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: primaryColor1,
        border: Border(bottom: BorderSide(color: Colors.white70)),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Icon(
              Icons.save,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("Save", style: drawerTextStyle),
            ),
          ],
        ),
      ),
    ));
    for (var c in catList) {
      final tabbarGenerat = Container(
        decoration: BoxDecoration(
          color: selectItem == _tabController.index
              ? primaryColor1
              : primaryColor2,
          border: Border(bottom: BorderSide(color: Colors.white70)),
        ),
        child: ListTile(
          title: Text(c.name, style: drawerTextStyle),
          onTap: () {
            _tabController.animateTo(c.id - 1);
//            setState(() {
//              selectItem = c.id-1;
//              drawerTile();
//            });
          },
        ),
      );
      drawerList.add(tabbarGenerat);
    }
  }

  //todo:this is tabBar DynamicList
  void tabBar() {
    for (var t in catList) {
      final tab = Tab(
        child: Text(
          t.name,
          style: tabBarTestStyle,
        ),
      );
      tabbarList.add(tab);
    }
  }

  //todo: this is dynamic tabBarView Page
  void tabpage() {
    for (var p in catList) {
      final screen = NewsScreens(
        id: p.id,
        name: p.name,
      );
      tabViewPage.add(screen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The Telegraph",
      home: DefaultTabController(
        length: tabbarList.length,
        child: Scaffold(
          appBar: AppBar(
            elevation: 10.0,
            backgroundColor: primaryColor1,
            title: Text("The Talegraph"),
          ),
          drawer: Drawer(
            child: ListView(
              children: drawerList,

            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: primaryColor2,
                child: TabBar(
                  labelColor: Colors.white,
                  onTap: (index) {
                    setState(() {
                      print(index);
                    });
                  },
                  tabs: tabbarList,
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: primaryColor3,
                  indicatorWeight: 4.0,
                ),
              ),

              //tabBarView
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: tabViewPage,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}