import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {

 final double height;
 final Color color;

  const MySeparator({this.height =1, this.color=Colors.blue});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        final boxWidth = constraints.constrainWidth();
        final dashWidht = 10.0;
        final dashHeight = height;
        final dashConut = (boxWidth / (2* dashWidht)).floor();
        return Flex(
          children: List.generate(dashConut, (_){
            return SizedBox(
              width: dashWidht,
              height: dashHeight,
              child: DecoratedBox(
                  decoration:BoxDecoration(
                    color: color,
                  )
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
