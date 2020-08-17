import 'package:flutter/material.dart';
import 'home_page_content.dart';

class CXHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: CXHomePageContent(),
    );
  }
}
