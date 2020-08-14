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
      body: IconDemo(),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Icon字体图标和图片图标
    // 1.字体图标矢量图(放大的时候不会失真)
    // 2.字体图标可以设置颜色
    // 3.图标很多时, 占据空间更小
//    return Icon(
//      Icons.person,
//      size: 200,
//      color: Colors.purple,
//    );
//    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.purple,);
    // 1.0xe91d -> unicode编码
    // 2.设置对应的字体
    return Text("\ue91d", style: TextStyle(fontSize: 200, color: Colors.purple, fontFamily: 'MaterialIcons'),);
  }
}



class FadeInImageDemo extends StatelessWidget {

  final imageURL =
      "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg";
  @override
  Widget build(BuildContext context) {
    // 1.占位图的问题: FadeInImage
    // 2.图片缓存: 1000张 100m
    return FadeInImage(
      fadeInDuration: Duration(milliseconds: 5),
      fadeOutDuration: Duration(milliseconds: 5),
      placeholder: AssetImage("assets/images/image01.jpg"),
      image: NetworkImage(imageURL),
    );
  }
}


class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1.默认情况下Button上下有一定的间距
    // 2.Button变小: ButtonTheme
    // 3.取出Button的内边距
    return Center(
      child: ButtonTheme(
        minWidth: 30,
        height: 5,
        child: FlatButton(
          padding: EdgeInsets.all(0),
          child: Text("FlatButton", style: TextStyle(
            color: Colors.white,
          ),),
          color: Colors.purple,
          onPressed: (){},
        ),
      ),
    );
  }
}
