import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/grade_places.dart';
import './screens/plase_list.dart';
import './screens/add_place.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GradePlace(),
      child: MaterialApp(
        title: 'Play with Hardware',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PlacesList(),
        routes: {
          AddNewPlace.routeName: (context) => AddNewPlace(),
        },
      ),
    );
  }
}

