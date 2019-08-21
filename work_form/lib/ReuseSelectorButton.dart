import 'package:flutter/material.dart';

class ReuseSelectorButton extends StatelessWidget {
  const ReuseSelectorButton({this.onTap, this.size, this.active, this.name,this.image,this.icon});

  final Function onTap;
  final Size size;
  final bool active;
  final String name;
  final Image image;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          width: size.width / 4 - 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3.0,
              color:
                  active == true ? Colors.grey : Colors.lightGreen,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
//                Icon(FontAwesomeIcons.check, value1 == true ? size: 10: size:0,) : null,
                //TODO:If you Show the picture so ancomment that
                // Image(image: AssetImage('img/w.jpg'),fit: BoxFit.contain,alignment: Alignment.center),
                image == null ? icon: image,
                Text(
                  name,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
