import 'package:flutter/material.dart';
import 'add_place.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Place"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            Navigator.of(context).pushNamed(AddNewPlace.routeName);
          },
        )
      ],
      ),
      body: Center(
        child: CircularProgressIndicator(
          
        ),
      ),
    );
  }
}
