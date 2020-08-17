import 'package:flutter/material.dart';

class CXDashLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  CXDashLine(
      {this.axis = Axis.horizontal,
        this.dashedWidth = 1,
        this.dashedHeight = 1,
        this.count = 10,
        this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(decoration:BoxDecoration(color: color)),
        );
      }),

    );
  }
}