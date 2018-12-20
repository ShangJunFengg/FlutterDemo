import 'package:flutter/material.dart';

/**
 横向竖向列表
 */
void main() => runApp(MyApp(
  items: new List<String>.generate(100, (i)=>"Item $i"),

));

class MyApp extends StatelessWidget{

  final List<String> items;
  //构造函数
    MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {

    for (var value in items) {
      print(value);
    }
    
    print("加载了--");
    print(items.length);
//    return MaterialApp(
    return MaterialApp(
          title: 'dsds',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("listview"),
        ),

          body:Container(
            height: 200,
            color: Colors.brown,
            child:  new ListView(
              scrollDirection: Axis.horizontal,//关键代码横向列表
              children: <Widget>[
                new Container(
                  width: 180.0,
                  color: Colors.green,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.blue,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.white,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.red,
                ),
              ],
            ),
          )





//        body:new ListView.builder(//默认竖向
//          itemCount: items.length,
//            itemBuilder: (context,index)
//        {
//          return new ListTile(
//            title: new Text('${items[index]}'),
//          );
//        })









      ),
    );
  }

}

class MyList extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.green,
        ),
        new Container(
          width: 180.0,
          color: Colors.blue,
        ),
        new Container(
          width: 180.0,
          color: Colors.white,
        ),
        new Container(
          width: 180.0,
          color: Colors.red,
        ),
      ],
    );
  }

}