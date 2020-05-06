import 'package:flutter/material.dart';
import '../config/index.dart';
import '../service/http_service.dart';
import 'dart:convert';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {

  // 防止刷新处理,保持当前状态
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('首页刷新...');
  }

  @override
  Widget build(BuildContext context) {
//    super.build(context);
    return Scaffold(
      backgroundColor: KColor.backgroundColor,
      appBar: AppBar(title: Text(KString.homeTitle),),
      body: FutureBuilder(
        future: request("homePageContext", formData: null),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            var data = json.decode(snapshot.data.toString());
            print(data);

            List<Map> swiperDataList = (data['data']['slides'] as List).cast(); //轮播图
            List<Map> categoryDataList = (data['data']['category'] as List).cast(); //分类
            List<Map> recommendDataList = (data['data']['recommend'] as List).cast(); // 商品推荐
            List<Map> floor1DataList = (data['data']['floor1'] as List).cast(); // 底部商品推荐
            Map fp1 = data['data']['floor1Pic']; //广告

            return EasyRefresh(
//              enableControlFinishLoad: true,
              footer: ClassicalFooter(
                bgColor: Colors.white,
                textColor: KColor.refreshTextColor,
                infoColor: KColor.refreshTextColor,
                showInfo: true,
                noMoreText: '',
                infoText: KString.loading,
                loadReadyText: KString.loadReadyText,
              ),
              child: ListView(
                children: <Widget>[

                ],
              ),
              onLoad: () async {
                print('开始加载更多');
              },
            );
          }else {
            return Container(
              child: Text('数据加载中...'),
            );
          }
        },
      ),

    );
    return Center(
      child: Text('首页'),
    );
  }
}
