import 'package:flutter/material.dart';
import 'subject_page_content.dart';

class CXSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: CXSubjectPageContent(),
    );
  }
}
