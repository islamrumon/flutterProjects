import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'Drawer.dart';

class MenuPage extends DrawerContent{
  MenuPage({Key key, this.title});
  final String title;
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Tutorial Drawer')), body: Home());
  }
}


class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin{

  HiddenDrawerController _drawerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _drawerController = HiddenDrawerController(initialPage: MenuPage(
      title: 'main',
    ),
    items: [
      DrawerItem(
        text: Text('Home', style: TextStyle(color: Colors.white)),
        icon: Icon(Icons.home, color: Colors.white),
        page: MenuPage(
          title: 'Home',
        ),
      ),
      DrawerItem(
          text: Text(
            'Gallery',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.photo_album, color: Colors.white),
          page: MenuPage(
            title: 'Gallery',
          )),
      DrawerItem(
          text: Text(
            'Favorites',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.favorite, color: Colors.white),
          page: MenuPage(
            title: 'Favorites',
          )),
      DrawerItem(
          text: Text(
            'Notification',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.notifications, color: Colors.white),
          page: MenuPage(
            title: 'Notification',
          )),
      DrawerItem(
          text: Text(
            'Invite',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.insert_invitation, color: Colors.white),
          page: MenuPage(
            title: 'invite',
          )),
      DrawerItem(
          text: Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: MenuPage(
            title: 'SETTINGS',
          ))
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HiddenDrawer(
            controller: _drawerController,
            header: Align(
                alignment: Alignment.topLeft,
                child: Column(children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.black.withOpacity(0.1), width: 1)),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ClipOval(
                          child: Image(
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                'https://scontent.fktm7-1.fna.fbcdn.net/v/t1.0-9/48405358_683680282028761_2233474687176802304_n.jpg?_nc_cat=111&_nc_oc=AQnJcz3nmJPgqG0Koen6EyPPOQktub5ubjD7KdFTstGLQRNrKupGp3hOZ-twJGEK2fM&_nc_ht=scontent.fktm7-1.fna&oh=caed7075e39bcdcd38b333395161516d&oe=5DD670D5',
                              )))),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Flutter Tutorial',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ])),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.blue.withOpacity(0.6),
                      Colors.blue
                    ]))));
  }
}
