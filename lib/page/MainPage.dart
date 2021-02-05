import 'package:demo/MyString.dart';
import 'package:demo/page/shop/Shopping.dart';
import 'package:flutter/material.dart';
import 'category/CategoryPage.dart';
import 'home/HomePage.dart';
import 'center/SettingsPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);


  @override
  MyTabState createState() => MyTabState();
}

class MyTabState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.listTabs[this.currentIndex],
      bottomNavigationBar: initButtom(),
    );
  }

  int currentIndex = 0;
  List listTabs = [
    HomePage(),
    CustomizedPage(),
    ShoppingPage(),
    PersonalCenterPage(),
  ];

  initButtom() => BottomNavigationBar(
    currentIndex: this.currentIndex,
    backgroundColor: Color(0xFF8C5F38),
    selectedItemColor: Color(0xFF000000),
    unselectedItemColor: Color(0xFFFFFFFF),
    type: BottomNavigationBarType.fixed,
    onTap:(index){
      setState(() {
        this.currentIndex = index;
      });
    },
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
            MyString.imgZhidemai,
          width: 20,
          height: 20,
        ),
        activeIcon: Image.asset(
          MyString.imgZhidemaiPress,
          width: 20,
          height: 20,
        ),
        label: "首页"
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            MyString.imgDingzhi,
            width: 20,
            height: 20,
          ),
          activeIcon: Image.asset(
            MyString.imgDingzhiPress,
            width: 20,
            height: 20,
          ),
          label: "订制"
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            MyString.imgGouwuche,
            width: 20,
            height: 20,
          ),
          activeIcon: Image.asset(
            MyString.imgGouwuchePress,
            width: 20,
            height: 20,
          ),
          label: "购物车"
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            MyString.imgWode,
            width: 20,
            height: 20,
          ),
          activeIcon: Image.asset(
            MyString.imgWodePress,
            width: 20,
            height: 20,
          ),
          label: "我的"
      ),
    ],
  );
}





