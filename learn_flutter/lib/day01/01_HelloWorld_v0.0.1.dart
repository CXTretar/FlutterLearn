import 'package:flutter/material.dart';

main() {
  // 1.runApp 函数
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // 2. Scaffold 脚手架,帮助我们快速搭建界面
      home: Scaffold(
        appBar: AppBar(
          title: Text("第一个Fultter程序"),
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
      )));
}
