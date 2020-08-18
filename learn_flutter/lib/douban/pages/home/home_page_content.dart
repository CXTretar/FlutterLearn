import 'package:flutter/material.dart';
import 'package:learn_flutter/services/home_request.dart';
class CXHomePageContent extends StatefulWidget {
  @override
  _CXHomePageContentState createState() => _CXHomePageContentState();
}

class _CXHomePageContentState extends State<CXHomePageContent> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HomeRequest.requestMovieRequest(0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: 30,
          itemBuilder: (ctx, index){
          return ListTile(title: Text("${index}"),);
      }),
    );
  }
}
