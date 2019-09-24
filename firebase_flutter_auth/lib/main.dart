import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormSubmit(),
    );
  }
}


class FormSubmit extends StatefulWidget {
  @override
  _FormSubmitState createState() => _FormSubmitState();
}

class _FormSubmitState extends State<FormSubmit> {
  @override
  Widget build(BuildContext context) {
    return Form(
      
    );
  }
}


class MyCustoemForm extends StatelessWidget {

  final
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

