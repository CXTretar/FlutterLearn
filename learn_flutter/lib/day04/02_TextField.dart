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
      body: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  final userNameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.green,
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: userNameTextEditController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: "UserName",
                labelStyle: TextStyle(fontSize: 20),
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.green[50],
              ),
              onChanged: (value) {
                print("输入$value");
              },
              onSubmitted: (value) {
                print("完成$value");
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTextEditController,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                icon: Icon(
                  Icons.lock,
                  size: 30,
                ),
                hintText: "请输入密码",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.green[50],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: FlatButton(
                child: Text(
                  "登录",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  final userName = userNameTextEditController.text;
                  final password = passwordTextEditController.text;
                  print("用户名: $userName, 密码: $password");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
