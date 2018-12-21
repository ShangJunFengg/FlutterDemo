import 'package:flutter/material.dart';

/**
 * 父子导航
 */
void main()=>runApp(ParentApp());

class ParentApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ParentWidget()//子父组件一定要分成两个class写,直接写在MaterialApp里面无效
    );
  }
}

class ParentWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('导航'),),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChildWidget()));
        },child:Text("open") ,),
      ),
    );
  }


}

class ChildWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('子页面'),),
      body: Center(
        child: RaisedButton(
          child: Text('返回')
            ,onPressed: (){
          Navigator.pop(context);
        }),
      ),
    );
  }
}