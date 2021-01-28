import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return CategoryState();
  }

}

class CategoryState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text(
        "CategoryPage",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}