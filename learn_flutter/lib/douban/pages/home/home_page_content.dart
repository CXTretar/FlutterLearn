import 'package:flutter/material.dart';

class CXHomePageContent extends StatefulWidget {
  @override
  _CXHomePageContentState createState() => _CXHomePageContentState();
}

class _CXHomePageContentState extends State<CXHomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页", style: TextStyle(fontSize: 20),),
    );
  }
}
