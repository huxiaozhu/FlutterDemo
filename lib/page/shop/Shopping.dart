import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ShoppingPageState();
  }

}

class ShoppingPageState extends State {
  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: Image.asset(
          MyString.imgShopping,
          width: 100,
          height: 100,
      ),
    );
  }
}