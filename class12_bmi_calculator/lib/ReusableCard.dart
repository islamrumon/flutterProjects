import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color_, this.childCard, this.myOnPress});
  final Color color_;
  //another object puss widget
  final Widget childCard;
  //Todo: THis tacnic in  cool video no 9
 final Function myOnPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color_
        ),
      ),
    );
  }
}