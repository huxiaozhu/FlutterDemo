import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }

}

class SettingsState extends State {
  @override
  Widget build(BuildContext context) {
      return Center(
        child: Text("SettingsPage"),
      );
  }
}