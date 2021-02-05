import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomizedPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return CategoryState();
  }

}

class CategoryState extends State with TickerProviderStateMixin {
  var list=new List();
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 5; i++)list.add("胡小猪宝宝$i");
    scrollController.addListener(() {
      // 滑动到底部的关键判断
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
        print("上拉加载");
        // 开始加载数据
        _loadMoreData();
    }});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.amber,
      child: RefreshIndicator(
          onRefresh: _onRefresh,
          child:AnimatedList(
            itemBuilder: (BuildContext context, int index, Animation<double> animation){
              return _itemBuilder(context, index,animation);
            },
            initialItemCount: list.isEmpty?0:list.length+1,
            controller: scrollController,
          )
      ),
    );
  }
  Future<void> _onRefresh() async{
    await Future.delayed(Duration(seconds: 2)).then((e){
      setState(() {
        for(int i=0;i<2;i++){
          var length = list.length;
          list.add("胡小猪宝宝，Add$length");
        }
      });
      Fluttertoast.showToast(msg: "刷新完成");
    });
  }

  Widget _itemBuilder(BuildContext context, int index, Animation<double> animation){
    if(index==list.length) {
      return Center(
        child: Text("加载中"),
      );
    }else{
      return new SlideTransition(
        // position: animation.drive(Treen),
        child: Card(
            shadowColor: Colors.grey,
            margin: EdgeInsets.all(10),
            clipBehavior:Clip.hardEdge,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(list[index] , style: TextStyle(fontSize: 28)),
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
      );
  }
  }

  _loadMoreData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        for(int i=0;i<5;i++){
          var length = list.length;
          list.add("胡小猪宝宝，上拉加载$length");
        }
      });
      Fluttertoast.showToast(msg: "上拉加载完成");
    });
  }


}