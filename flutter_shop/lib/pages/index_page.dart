import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../config/index.dart';
import '../provide/current_index_provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_page.dart';
import 'member_page.dart';
import 'shopping_cart_page.dart';
import 'category_page.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      // 首页
      icon: Icon(Icons.home),
      title: Text(KString.homeTitle),
    ),
    BottomNavigationBarItem(
      // 分类
      icon: Icon(Icons.category),
      title: Text(KString.categoryTitle),
    ),
    BottomNavigationBarItem(
      // 购物车
      icon: Icon(Icons.shopping_cart),
      title: Text(KString.shoppingCartTitle),
    ),
    BottomNavigationBarItem(
      // 会员中心
      icon: Icon(Icons.person),
      title: Text(KString.memberTitle),
    ),
  ];

  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    ShoppingCartPage(),
    MemberPage(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);

    return Provide<CurrentIndexProvide>(
      builder: (context, child, val) {
        // 取到当前索引状态值
        int currentIndex =
            Provide.value<CurrentIndexProvide>(context).currentIndex;

        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items: bottomTabs,
            onTap: (index) {
              Provide.value<CurrentIndexProvide>(context).changeIndex(index);
            },
          ),
          body: IndexedStack(
            index: currentIndex,
            children: tabBodies,
          ),
        );
      },
    );
  }
}
