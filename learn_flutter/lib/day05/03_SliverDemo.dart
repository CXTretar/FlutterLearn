import 'dart:math';
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
//      appBar: AppBar(
//        title: Text("Sliver 测试"),
//      ),
      body: SliverDemo2(),
    );
  }
}

class SliverDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello World"),
            background: Image.asset(
              "assets/images/image01.jpg",
              fit: BoxFit.cover,
            ),
          ),
          pinned: true,
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)),
                );
              },
              childCount: 10,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text("联系人$index"),
              );
            },
            childCount: 20,
          ),
        )
      ],
    );
  }
}

class SliverDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext ctx, int index) {
                    return Container(
                      color: Color.fromARGB(255, Random().nextInt(256),
                          Random().nextInt(256), Random().nextInt(256)),
                    );
                  },
                  childCount: 10,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                )),
          ),
        ),
      ],
    );
  }
}
