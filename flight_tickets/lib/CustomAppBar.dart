import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final List<BottomNavigationBarItem> bottomBarItem=[];

  CustomAppBar(){
    bottomBarItem.add(
      BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black,),
          title: Text("Explore",style: TextStyle(color: Colors.black),),
      ),
    );
    bottomBarItem.add(
      BottomNavigationBarItem(icon: Icon(Icons.favorite),
      title: Text("WatchList"))
    );
    bottomBarItem.add(
        BottomNavigationBarItem(icon: Icon(Icons.local_offer),
            title: Text("Offers"))
    );
    bottomBarItem.add(
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
            title: Text("Notifications"))
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 15.0,
      items: bottomBarItem,
      type: BottomNavigationBarType.fixed,
    );
  }
}
