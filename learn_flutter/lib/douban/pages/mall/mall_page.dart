import 'package:flutter/material.dart';
import 'mall_page_content.dart';

class CXMallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("市集"),
      ),
      body: CXMallPageContent(),
    );
  }
}
