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

class CXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: CXHomeContent("接收到的消息"),
    );
  }
}

// Widget 不加 _ ,暴露给别人用
class CXHomeContent extends StatefulWidget {
  final String message;

  CXHomeContent(this.message);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CXHomeContentState();
  }
}

/*
 *  为什么Flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量(状态/数据)
 *  2.在Flutter的运行过程中:
 *    Widget是不断的销毁和创建的
 *    当我们自己的状态发生改变时, 并不希望重新创建一个新的State
* */

// State是加_: 状态这个类只是给Widget使用
class _CXHomeContentState extends State<CXHomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text(
            "当前计数:$_counter",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "传递的信息:${widget.message}",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            "+",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        RaisedButton(
          child: Text(
            "-",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.green,
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
        ),
      ],
    );
  }
}
