import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:learn_flutter/services/http_request.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    final dio = Dio();

    dio.get("https://httpbin.org/get").then((res) {
      print("GET---- $res");
    });

    dio.post("https://httpbin.org/post").then((res) {
      print("POST---- $res");
    });

    HttpRequest.request("https://httpbin.org/get", params: {"name": "Jack"}).then((res) {
      print(res);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue,
    );
  }
}
