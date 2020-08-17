import 'package:flutter/material.dart';
import 'profile_page_content.dart';

class CXProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: CXProfilePageContent(),
    );
  }
}
