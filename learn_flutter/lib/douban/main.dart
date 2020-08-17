import 'package:flutter/material.dart';
import '../douban/pages/main/main_page.dart';

main() {
  // 1.runApp 函数
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn Flutter",
      home:  CXMainPage(),
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}




