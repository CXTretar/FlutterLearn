import 'package:flutter/material.dart';

class CXBottomNavigationBarItem extends BottomNavigationBarItem {
  CXBottomNavigationBarItem(String iconName, String title)
      : super(
          title: Text(
            title,
          ),
          icon: Image.asset(
            "assets/images/tabbar/${iconName}.png",
            width: 30,
          ),
          activeIcon: Image.asset(
            "assets/images/tabbar//${iconName}_active.png",
            width: 30,
          ),
        );
}
