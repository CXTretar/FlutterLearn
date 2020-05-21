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
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: ImageDemo03(),
    );
  }
}

/* 加载本地图片
*  1.在Flutter项目中创建一个文件夹,存储图片
*  2.在pubspec.yaml进行配置
*  3.使用图片
* */
class ImageDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/image01.jpg");
//      Image(
//      image: AssetImage("assets/images/image01.jpg"),
//    );
  }
}


class ImageDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg");
  }
}


class ImageDemo01 extends StatelessWidget {
  final imageURL =
      "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg";
  @override
  Widget build(BuildContext context) {
    return Image(
      color: Colors.black,
      colorBlendMode: BlendMode.color,
      image: NetworkImage(imageURL),
      fit: BoxFit.contain,
//      alignment: Alignment.bottomCenter,
      alignment: Alignment(0, -1),
      // 范围 [-1, 1]
      repeat: ImageRepeat.repeat,
      width: 200,
      height: 200,
    );
  }
}


