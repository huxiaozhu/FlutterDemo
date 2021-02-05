import 'package:flutter/material.dart';

class CustomizedPage extends StatefulWidget{
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
      child:ListView(
        children: [
          Card(
              shadowColor: Colors.grey,
              margin: EdgeInsets.all(10),
              clipBehavior:Clip.hardEdge,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          ),
          Card(
              shadowColor: Colors.red,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          ),
          Card(
              shadowColor: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          ),
          Card(
              shadowColor: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          ),
          Card(
              shadowColor: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          ),
          Card(
              shadowColor: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("张三",style: TextStyle(fontSize: 28)),
                    subtitle: Text("董事长"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("电话:123456789"),
                  ),
                  ListTile(title: Text("地址：xxxxxxxxxxxxxxxxx"))
                ],
              )
          )
        ],
      ),
    );
  }
}