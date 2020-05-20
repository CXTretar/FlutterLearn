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

class CXHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CXHomeProductItem("Apple1", "Macbook Product1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        CXHomeProductItem("Apple2", "Macbook Product2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        CXHomeProductItem("Apple3", "Macbook Product3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }
}

class CXHomeProductItem extends StatelessWidget {

  final String title;
  final String description;
  final String imgURL;

  final fontStyle1 =  TextStyle(fontSize: 25, color: Colors.orange);
  final fontStyle2 =  TextStyle(fontSize: 25, color: Colors.blue);

  CXHomeProductItem(this.title, this.description, this.imgURL);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 10,
          color: Colors.purple,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(title, style: fontStyle1),
          SizedBox(height: 20),
          Text(description, style: fontStyle2),
          SizedBox(height: 10),
          Image.network(imgURL),
        ],
      ),
    );
  }
}