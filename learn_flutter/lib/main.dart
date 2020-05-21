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
      body: CXHomeContent(),
    );
  }
}

// StatelessWidget 生命周期
//class CXHomeContent extends StatelessWidget {
//  final String message;
//
//  CXHomeContent(this.message) {
//    print("构造函数被调用");
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    print("调用build方法");
//    return Text(message);
//  }
//}

/*
 首先，执行StatefulWidget中相关的方法：

1、执行StatefulWidget的构造函数（Constructor）来创建出StatefulWidget；

2、执行StatefulWidget的createState方法，来创建一个维护StatefulWidget的State对象；

其次，调用createState创建State对象时，执行State类的相关方法：

1、执行State类的构造方法（Constructor）来创建State对象；

2、执行initState，我们通常会在这个方法中执行一些数据初始化的操作，或者也可能会发送网络请求；
注意：这个方法是重写父类的方法，必须调用super，因为父类中会进行一些其他操作；

并且如果你阅读源码，你会发现这里有一个注解（annotation）：@mustCallSuper

3、执行didChangeDependencies方法，这个方法在两种情况下会调用



情况一：调用initState会调用；

情况二：从其他对象中依赖一些数据发生改变时，比如前面我们提到的InheritedWidget（这个后面会讲到）；

4、Flutter执行build方法，来看一下我们当前的Widget需要渲染哪些Widget；

5、当前的Widget不再使用时，会调用dispose进行销毁；

6、手动调用setState方法，会根据最新的状态（数据）来重新调用build方法，构建对应的Widgets；

7、执行didUpdateWidget方法是在当父Widget触发重建（rebuild）时，系统会调用didUpdateWidget方法；

*/

class CXHomeContent extends StatefulWidget {
  CXHomeContent() {
    print("1.调用CXHomeContent的constructor方法");
  }

  @override
  _CXHomeContentState createState() {
    print("2.调用CXHomeContent的createState方法");
    return _CXHomeContentState();
  }
}

class _CXHomeContentState extends State<CXHomeContent> {
  int _counter = 0;

  _CXHomeContentState() {
    print("3.调用_CXHomeContentState的constructor方法");
  }

  @override
  void initState() {
    // TODO: implement initState
    print("4.调用_CXHomeContentState的initState方法");

    // 调用: 这里是必须调用super    @mustCallSuper
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("调用_CXHomeContentState的didChangeDependencies方法");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(CXHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    print("调用_CXHomeContentState的didUpdateWidget方法");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_CXHomeContentState的build方法");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("+"),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              }),
          Text("数字:$_counter")
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    print("6.调用_CXHomeContentState的dispose方法");
    super.dispose();
  }
}
