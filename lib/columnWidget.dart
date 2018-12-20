import 'package:flutter/material.dart';


void main()=>runApp(MyColumnApp());

/**
 * 竖向布局
 */
class MyColumnApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("竖向布局"),
        ),
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Center(//Column竖向布局没有x轴居中,加一个Center实现水平居中
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,//组件居中对齐 ,默认左对齐,还有左对齐右对齐
          mainAxisAlignment: MainAxisAlignment.center,//父组件(全部的组件)y轴居中
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("永远年轻"),
            ),
            Text("dsds"),
            Text("dsdsdsdsdsds"),
            Text("dsds"),
          ],),
      );
   ;
  }



}