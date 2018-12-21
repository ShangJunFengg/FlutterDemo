import 'package:flutter/material.dart';

void main()=>runApp(MyCardApp());

class MyCardApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('卡片布局'),),
        body: MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Column(
        children: <Widget>[

          ListTile(
            title: Text('的水电费水电费'),
            subtitle: Text("子标题"),
            leading: new Icon(Icons.account_box,color: Colors.green,),
          ),
          new Divider(),//分割线
          ListTile(
            title: Text('的水电费水电费'),
            subtitle: Text("子标题"),
            leading: new Icon(Icons.account_box,color: Colors.green,),
          ),
          new Divider(),//分割线
          ListTile(
            title: Text('的水电费水电费'),
            subtitle: Text("子标题"),
            leading: new Icon(Icons.account_box,color: Colors.green,),
          ),

          ListTile(
            title: Text('的水电费水电费'),
            subtitle: Text("子标题"),
            leading: new Icon(Icons.account_box,color: Colors.green,),
          ),

        ],
      ),
    );
  }

}