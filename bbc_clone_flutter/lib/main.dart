import 'package:flutter/material.dart';
import 'service/app_bar_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: AppBarDesign(),
    );
  }
}




