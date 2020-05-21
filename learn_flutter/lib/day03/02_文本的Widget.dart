import 'package:flutter/material.dart';

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

class CXHomePage extends StatefulWidget {
  @override
  _CXHomePageState createState() => _CXHomePageState();
}

class _CXHomePageState extends State<CXHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: RichTextDemo(),
    );
  }
}

class RichTextDemo extends StatefulWidget {
  @override
  _RichTextDemoState createState() => _RichTextDemoState();
}

class _RichTextDemoState extends State<RichTextDemo> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(
            text: "Hello ",
            style: TextStyle(
              color: Colors.red,
            )),
        TextSpan(
            text: " World",
            style: TextStyle(
              color: Colors.blue,
            )),
        WidgetSpan(
          child: Icon(Icons.favorite_border, color: Colors.red),
        ),
        TextSpan(
            text: "Hello World",
            style: TextStyle(
              color: Colors.red,
            ))
      ],
    ));
  }
}
