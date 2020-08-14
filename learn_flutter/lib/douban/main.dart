import 'dart:math';
import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/widgets/CXStarRating.dart';

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
        child: CXStarRating(
          rating: 2.5,
          count: 10,
        ),
      ),
    );
  }
}
