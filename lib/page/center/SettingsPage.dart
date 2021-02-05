import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';

class PersonalCenterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SettingsState();
  }

}

class SettingsState extends State {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.blue,
          ),
          preferredSize: Size.fromHeight(0),
        ),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
              createHeader(),
              ListTile(
                  title: Text("地址管理"),
                  trailing: Icon(Icons.arrow_forward_ios),
              ),
            ListTile(
              title: Text("账户安全"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("支付设置"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("我的档案"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("通用"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("功能反馈"),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      );
  }
}

Widget createHeader() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    color: Colors.blue,
    child: Column(
      children: [
        Center(
          child: ClipOval(
            child: Image.asset(
                MyString.imgIcon,
                width: 100,
                height: 100,
            ),
          ),
        ),
        Center(
          widthFactor: 1,
          heightFactor: 2,
          child: Text("昵称：胡小猪宝宝")
        ),
        Center(
            child: Text("积分：70")
        )

      ],
    ),
  );

}