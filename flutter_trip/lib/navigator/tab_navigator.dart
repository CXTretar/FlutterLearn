import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/search/search_page.dart';
import '../pages/travel/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _controller = PageController(
    initialPage: 0,
  );

  final _unselectedColor = Colors.grey;
  final _selectedColor = Colors.blue;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          CXHomePage(),
          CXSearchPage(),
          CXTravelPage(),
          CXProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: _selectedColor,
        unselectedItemColor: _unselectedColor,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _setBottomBarItems('首页', Icons.home),
          _setBottomBarItems('搜索', Icons.search),
          _setBottomBarItems('旅拍', Icons.camera_alt),
          _setBottomBarItems('我的', Icons.account_circle),
        ],
      ),
    );
  }

  _setBottomBarItems(String title, IconData icon) {
    return  BottomNavigationBarItem(
      icon: Icon(
        icon,
      ),
      activeIcon: Icon(
        icon,
      ),
      title: Text(title),
    );
  }
}
