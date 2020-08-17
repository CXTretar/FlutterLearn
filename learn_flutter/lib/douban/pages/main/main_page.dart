import 'package:flutter/material.dart';
import 'initialize_items.dart';

class CXMainPage extends StatefulWidget {
  @override
  _CXMainPageState createState() => _CXMainPageState();
}

class _CXMainPageState extends State<CXMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        items: items,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
