import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return row;
  }
}
var col = Column(
  children: [
    row,
    row,
    row
  ],
);
var row = Row(
  // crossAxisAlignment: CrossAxisAlignment.center,
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(child: test),
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
void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}
