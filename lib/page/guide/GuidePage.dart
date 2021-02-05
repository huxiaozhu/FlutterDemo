import 'package:demo/MyString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuidePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>GuideState();
}

class GuideState extends State{
  var pic=["images/pic1.png","images/pic2.png","images/pic3.png"];
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var isFrist;

  @override
  void initState() {
    super.initState();
    isFrist = _prefs.then((value) => value.getBool('frist')?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context,int index){
        var image = new Image.asset(pic[index],fit: BoxFit.fill,width: double.infinity,height: double.infinity);
        if(index==pic.length-1) {
          return Stack(
            children: [
              image,
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200,
                  margin: EdgeInsetsDirectional.only(bottom: 50),
                  child: RaisedButton(
                    color: Color.fromARGB(255, 161, 145, 103),
                    padding: EdgeInsets.all(10),
                    child: Text("立即体验",style: TextStyle(color: Colors.white,fontSize: 16)),
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, MyString.routesMain, (route) => false);
                    },
                  ),
                ),
              )
            ],
          );
        }else{
          return image;
        }
      },
      itemCount: 3,
      // pagination: new SwiperPagination(),
      // control: new SwiperControl(color: Colors.transparent),
      duration: 200,
      autoplay: false,
      loop: false,
    );

  }

  setSharePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('frist', true);
  }

}