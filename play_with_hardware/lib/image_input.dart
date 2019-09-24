import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _images;

 Future<void> _takeImage() async{
    final image_file = await ImagePicker.pickImage(source: ImageSource.camera,maxWidth: 600);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1.6,
            ),
          ),
          child: _images != null
              ? Image.file(
                  _images,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text('No Images select'),
          alignment: Alignment.center,
        ),
        Expanded(
            child: FlatButton.icon(
          onPressed: (){
          _takeImage();
          },
          icon: Icon(Icons.camera),
          label: Text('Take Photo'),
          textColor: Theme.of(context).primaryColor,
        )),
      ],
    );
  }
}
