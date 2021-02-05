import 'package:demo/page/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text("值得买"),
      ),
      centerTitle: true,
      backgroundColor: Color(0xFF8C5F38),
    ),

    body:StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 16,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemBuilder: (BuildContext context, int index)=>new Container(
          color: Colors.green,
          child: new Center(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text('$index'),
            ),
          )),
      staggeredTileBuilder: (int index) => new StaggeredTile.count(2, index.isEven ? 2 : 1),
    ),

    drawer: Drawer(
      child: ListView(
        children: [
          Container(
            height: 50,
            child: GestureDetector(
              child: Center(
                child: Text("新品发布",style: TextStyle(color: Colors.red))
              ),
            ),
          ),
          Divider(
            height: 5,
            color: Color(0xFF000000),
          ),
          Container(
            height: 50,
            child: GestureDetector(
              child: Center(
                child: Text("新衣订制",style: TextStyle(color: Colors.blue),),
              ),
              onTap: (){
                Fluttertoast.showToast(msg: "新衣订制");
              },
            ),
          ),
          Divider(
            height: 5,
            color: Color(0xFF000000),
          ),
          Container(
            height: 50,
            child: GestureDetector(
              child: Center(
                child: Text("特卖精品",style: TextStyle(color: Colors.black),),
              ),
              onTap: (){
                Fluttertoast.showToast(msg: "特卖精品");
              },
            ),
          ),
          Divider(
            height: 5,
            color: Color(0xFF000000),
          ),
          Container(
            height: 50,
            child: GestureDetector(
              child: Center(
                child: Text("好货推荐",style: TextStyle(color: Colors.green),),
              ),
              onTap: (){
                Fluttertoast.showToast(msg: "好货推荐");
              },
            ),
          ),
          Divider(
            height: 5,
              color: Color(0xFF000000),
          ),
          Container(
            height: 50,
            child: GestureDetector(
              child: Center(
                child: Text("随便逛逛",style: TextStyle(color: Colors.yellow),),
              ),
              onTap: (){
                Fluttertoast.showToast(msg: "随便逛逛");
              },
            ),
          ),
          Divider(
            height: 5,
            color: Color(0xFF000000),
          ),
        ],
      ),
    ),
  );

}
