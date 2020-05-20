import 'package:flutter/material.dart';

main() {
  // 1.runApp 函数
  runApp(MyApp());
}

/*
* Widget:
* 有状态的Widget:
*  1. StatefulWidget 在运行过程中有一些状态(data)需要改变;
*  2. StatelessWidget包含一个必须重写的方法：build方法;
*  3. Flutter在拿到我们自己创建的StatelessWidget时，就会执行它的build方法;
*  4. 我们需要在build方法中告诉Flutter，我们的Widget希望渲染什么元素，比如一个Text Widget;
*  5. StatelessWidget没办法主动去执行build方法，当我们使用的数据发生改变时，build方法会被重新执行;
*
* 无状态的Widget:
*  1. StatelessWidget 内容是确定没有状态(data)的改变
* */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 2. Scaffold 脚手架,帮助我们快速搭建界面
      home: CXHomePage(),
    );
  }
}

class CXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个Fultter程序"),
      ),
      body: CXContentBody(),
    );
  }
}

class CXContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "Hello World",
        style: TextStyle(fontSize: 30, color: Colors.green),
      ),
    );
  }
}
