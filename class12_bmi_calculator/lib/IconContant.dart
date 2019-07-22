import 'package:flutter/material.dart';

class IconContant extends StatelessWidget {

  IconContant(this.icon_,this.text_);
  final IconData icon_;
  final String text_;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon_,
          color: Colors.white,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text_,style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey
        ),
        )
      ],
    );
  }
}
