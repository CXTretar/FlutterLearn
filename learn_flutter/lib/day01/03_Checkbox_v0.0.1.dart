import 'package:flutter/material.dart';

main() {
  // 1.runApp 函数
  runApp(MyApp());
}

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: true,
              onChanged: (value) => print(value),
            ),
            Text("同意协议"),
          ],
        )
    );
  }
}
