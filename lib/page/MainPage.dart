import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'CategoryPage.dart';
import 'HomePage.dart';
import 'SettingsPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);


  @override
  MyTabState createState() => MyTabState();
}

class MyTabState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyString.appTitle),
        centerTitle: true,
      ),
      body: this.listTabs[this.currentIndex],
      bottomNavigationBar: initButtom(),
      floatingActionButton: initActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  int currentIndex = 0;
  List listTabs = [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
  ];

  initButtom() => BottomNavigationBar(
    currentIndex: this.currentIndex,
    iconSize: 30.0,
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.amber,
    backgroundColor: Colors.blue,
    type: BottomNavigationBarType.fixed,
    onTap:(index){
      setState(() {
        this.currentIndex = index;
      });
    },
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
            "images/home.png",
          width: 30,
          height: 30,
        ),
        activeIcon: Image.asset(
          "images/setting.png",
          width: 30,
          height: 30,
        ),
        label: "首页"
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: "分类",
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "设置"
      )
    ],
  );
}

initActionButton(BuildContext context) =>FloatingActionButton(
  shape: CircleBorder(),
  elevation: 20,
  backgroundColor: Colors.yellow,
  tooltip: "赞",
  child: const Icon(Icons.add),
  onPressed: (){
    Fluttertoast.showToast(msg: "赞");
  },
);




