import 'dart:async';

import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var bool = prefs.getBool("isFrist")??false;

    //倒计时三秒进入主界面
    await new Future.delayed(const Duration(seconds: 3));
    if(!bool) {
        prefs.setBool('isFrist', true);
        Navigator.pushNamedAndRemoveUntil(context, MyString.routesGuide, (route) => route==null);
    }else{
        Navigator.pushNamedAndRemoveUntil(context, MyString.routesMain, (route) => route==null);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage(MyString.imgSplash))
    );
  }
}

