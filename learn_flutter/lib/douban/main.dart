import 'dart:math';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/widgets/CXDashLine.dart';

main() {
  // 1.runApp 函数
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CXHomePage(),
    );
  }
}

class CXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("豆 瓣"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              child: CXDashLine(dashedWidth: 5, count: 15,),
            ),
            Container(
              height: 200,
              child: CXDashLine(axis: Axis.vertical, dashedHeight: 5, count: 15),
            ),
          ],
        ),
      ),
    );
  }
}


