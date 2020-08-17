import 'package:flutter/material.dart';
import 'bottom_bar_item.dart';
import '../home/home_page.dart';
import '../group/group_page.dart';
import '../mall/mall_page.dart';
import '../profile/profile_page.dart';
import '../subject/subject_page.dart';

List<CXBottomNavigationBarItem> items = [
  CXBottomNavigationBarItem("home", "首页"),
  CXBottomNavigationBarItem("subject", "书影音"),
  CXBottomNavigationBarItem("group", "小组"),
  CXBottomNavigationBarItem("mall", "市集"),
  CXBottomNavigationBarItem("profile", "我的"),
];

List<StatelessWidget> pages = [
  CXHomePage(),
  CXSubjectPage(),
  CXGroupPage(),
  CXMallPage(),
  CXProfilePage(),
];

