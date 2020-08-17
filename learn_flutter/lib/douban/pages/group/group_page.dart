import 'package:flutter/material.dart';
import 'group_page_content.dart';

class CXGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: CXGroupPageContent(),
    );
  }
}
