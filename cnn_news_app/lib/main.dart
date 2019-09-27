import 'package:flutter/material.dart';
import 'widget/app_bar_custom.dart';
import 'screen/search_screen.dart';

void main() => runApp(StartApp());

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScrenn(),
    );
  }
}

