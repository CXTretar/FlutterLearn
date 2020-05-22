import 'package:flutter/material.dart';
import 'package:learn_flutter/day02/01_statelessWidget_v0.0.1.dart';

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
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: TextStyle(fontSize: 50, backgroundColor: Colors.blue),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 50, backgroundColor: Colors.blue),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 50, backgroundColor: Colors.blue),
          ),
        ),
        Text(
          "Hello World",
          style: TextStyle(fontSize: 50, backgroundColor: Colors.blue),
        ),
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Align(
        alignment: Alignment(-0.5, -1),
        widthFactor: 5,
        heightFactor: 5,
        child: Icon(
          Icons.favorite,
          size: 50,
        ),
      ),
    );
  }
}
