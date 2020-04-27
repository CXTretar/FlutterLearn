import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './config/index.dart';
import './provide/current_index_provide.dart';

void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var providers = Providers();

  providers..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: KString.mainTitle, // 标题
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // 主题
          primaryColor: KColor.primaryColor,
        ),
        home: IndexPage(),
      ),
    );
  }
}
