import 'package:flutter/material.dart';

class MyDashLine extends StatelessWidget {
  final Axis axis;
  final double dashWidth;
  final double dashHeight;
  final Color color;
  final int count;

  MyDashLine(
      {Key key,
      this.axis = Axis.horizontal,
      this.dashWidth = 1,
      this.dashHeight = 1,
      this.color = Colors.black,
      this.count = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
	  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (_) {
        return SizedBox(
          width: dashWidth,
          height: dashHeight,
		  child: DecoratedBox(decoration: BoxDecoration(color: color)),
        );
      }),
    );
  }
}