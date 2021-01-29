import 'dart:async';

import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PreviewState();
  }

}

class PreviewState extends State{
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    //倒计时三秒进入主界面
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamedAndRemoveUntil(context, MyString.routesGuide, (route) => route==null);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('images/splash.png'))
    );
  }
}

