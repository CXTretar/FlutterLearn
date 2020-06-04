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
      body: ColumnDemo(),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
//      crossAxisAlignment: CrossAxisAlignment.baseline,
//      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        Container(
          width: 80,
          height: 60,
          color: Colors.blue,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 60,
          color: Colors.orange,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          width: 80,
          height: 40,
          color: Colors.red,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: 50,
          height: 30,
          color: Colors.green,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Row/Column: 继承自Flex
    // Flex: CSS Flex布局, 直接使用的较少
    // Axis.vertical: Column
    // Axis.horizontal: Row
    /**
     * Row特点:
     *  - 水平方向尽可能占据比较大的空间
     *    * 水平方向也是希望包裹内容, 那么设置mainAxisSize = min
     *  - 垂直方向包裹内容
     * MainAxisAlignment:
     *  - start: 主轴的开始位置挨个摆放元素(默认值)
     *  - end: 主轴的结束位置挨个摆放元素
     *  - center: 主轴的中心点对齐
     *  - spaceBetween: 左右两边的间距为0, 其它元素之间平分间距
     *  - spaceAround: 左右两边的间距是其它元素之间的间距的一半
     *  - spaceEvenly: 所有的间距平分空间
     * CrossAxisAlignment:
     *  - start: 交叉轴的起始位置对齐
     *  - end: 交叉轴的结束位置对齐
     *  - center: 中心点对齐(默认值)
     *  - baseline: 基线对齐(必须有文本的时候才起效果)
     *  - stretch: 先Row占据交叉轴尽可能大的空间, 将所有的子Widget交叉轴的高度, 拉伸到最大
     */
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
//      crossAxisAlignment: CrossAxisAlignment.baseline,
//      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        Container(
          width: 80,
          height: 60,
          color: Colors.blue,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 60,
          color: Colors.orange,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          width: 80,
          height: 40,
          color: Colors.red,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: 50,
          height: 30,
          color: Colors.green,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}
