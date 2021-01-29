import 'dart:collection';

import 'package:demo/MyString.dart';
import 'package:demo/page/MainPage.dart';
import 'package:demo/page/guide/GuidePage.dart';
import 'package:demo/page/preview/PreviewPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PreviewPage(),
      routes: {
        MyString.routesMain:(BuildContext context)=>MainPage(),
        MyString.routesGuide:(BuildContext context)=>GuidePage()
      },
    );
  }
}
