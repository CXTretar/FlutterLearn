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
      body: ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("点击 FloatingActionButton");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("RaisedButton"),
            textColor: Colors.white,
            color: Colors.purple,
            onPressed: () {
              print("点击 RaisedButton");
            },
          ),
          FlatButton(
            child: Text("FlatButton"),
            textColor: Colors.white,
            color: Colors.purple,
            onPressed: () {
              print("点击 FlatButton");
            },
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            textColor: Colors.purple,
            color: Colors.purple,
            onPressed: () {
              print("点击 OutlineButton");
            },
          ),
          FlatButton(
              color: Colors.yellow,
              onPressed: () {
                print("点赞");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text("点赞"),
                ],
              )),
        ],
      ),
    );
  }
}
