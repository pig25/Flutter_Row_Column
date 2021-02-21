import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return col;
  }
}
var col = Column(
  children: [
    //提示
    row,
    //文字
    row1,
    //圖示
    row2,
    //圖片
    row3,
  ],
);
var row = Row(
  // crossAxisAlignment: CrossAxisAlignment.center,
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    //把元件包到一個容器
    Expanded(child: test),
    //相對比例
    Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: test,
    ),
    Flexible(
      fit: FlexFit.loose,
      flex: 1,
      child: test,
    ),
    //空白 flex 是比例
    Spacer(flex: 3),
    //固定大小
    SizedBox(
      width: 200,
      child: test,
    ),
  ],
);
var test = Container(
width: 100,
  height: 100,
  child: Text("123456789"),
  decoration: BoxDecoration(
    color: Colors.greenAccent,
    border: Border.all()
  ),

);
var row1 = Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
   Text('第一筆',style: TextStyle(
   fontSize: 20,
   fontFamily: "Futura",
   color: Colors.yellow
   ),
   ),
    Text('第二筆',style: TextStyle(
        fontSize: 30,
        fontFamily: "Futura",
        color: Colors.green
    ),
    ),
    Text('第三筆',style: TextStyle(
        fontSize: 40,
        fontFamily: "Futura",
        color: Colors.red
    ),
    ),
  ],
);
var row2 = Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(
      Icons.search,
      size: 50,
      color: Colors.red,

    ),
    Icon(
      Icons.photo_camera,
      size: 40,
      color: Colors.green,
    ),
    Icon(
      Icons.shop,
      size: 50,
      color: Colors.yellow,
    ),
  ],
);
var row3 = Row(

  children: [
   Image.network('https://raw.githubusercontent.com/flutter/website/master/examples/layout/sizing/images/pic1.jpg'),

  ],
);


void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}
