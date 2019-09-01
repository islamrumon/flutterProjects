import 'package:flutter/material.dart';
import 'MainWidget.dart';

void main() => runApp(
  MaterialApp(
    title: 'Hidden Drawer',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.pink
    ),
    home: MainWidget(),
  )
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Call Every thing'),
      ),
    );
  }
}
