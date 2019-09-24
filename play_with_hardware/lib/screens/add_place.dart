import 'package:flutter/material.dart';
import '../image_input.dart';

class AddNewPlace extends StatefulWidget {
  static const routeName = '/add_place';
  @override
  _AddNewPlaceState createState() => _AddNewPlaceState();
}

class _AddNewPlaceState extends State<AddNewPlace> {

  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Places'),

      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'title'
                        ),
                        controller: _controller,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ImageInput(),

                    ],
                  ),
                ),
              ),
            ),
            RaisedButton.icon(
              onPressed: null,
              icon: Icon(Icons.add),
              label: Text('Add Place'),
              elevation: 9,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            )
          ],
        ),
      ),
    );
  }
}
