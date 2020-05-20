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

/*
* android / ios 命令式编程 -- 属性
* react   / vue 声明式编程 -- 状态
* flutter 中所有的 Widget 都不能定义状态
* StatefulWidget 也不能定义状态, 用 createState 创建一个单独的类,通过这个类来管理状态
* */
class CXContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CXContentBodyState();
  }
}

class CXContentBodyState extends State<CXContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: flag,
              onChanged: (value) {
                print(value);
                setState(() {
                  flag = value;
                });
              },
            ),
            Text(
              "同意协议",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ));
  }
}
