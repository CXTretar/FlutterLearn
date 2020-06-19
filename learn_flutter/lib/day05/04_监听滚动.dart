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
  ScrollController _controller = ScrollController(initialScrollOffset: 300);
  bool _isShowFloatingBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isShowFloatingBtn = _controller.offset >= 300;
      });
//      print("监听到滚动 ${_controller.offset}");
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /**
     * 两种方式可以监听:
     *  controller:
     *    1.可以设置默认值offset
     *    2.监听滚动, 也可以监听滚动的位置
     *  NotificationListener
     *    1.开始滚动和结束滚动
     */
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliver 测试"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
//          print("监听到滚动 ${_controller.offset}");Ò
          if (notification is ScrollStartNotification) {
            print("开始滚动");
          } else if (notification is ScrollUpdateNotification) {
            print("正在滚动, 当前滚动位置: ${notification.metrics.pixels}, 总滚动距离: ${notification.metrics.maxScrollExtent}");
          } else if (notification is ScrollEndNotification) {
            print("结束滚动");
          }
          return true;
        },
        child: ListView.builder(
            controller: _controller,
            itemCount: 20,
            itemBuilder: (BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text("联系人$index"),
              );
            }),
      ),
      floatingActionButton: _isShowFloatingBtn
          ? FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            _controller.animateTo(0,
                duration: Duration(seconds: 1), curve: Curves.easeIn);
          })
          : null,
    );
  }
}
