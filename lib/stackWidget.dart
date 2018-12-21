import 'package:flutter/material.dart';

void main()=>runApp(MyStackApp());
/**
 * 层叠布局
 * 有两个以上用Positioned,只有两个可以随便用
 */
class MyStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var stack = new Stack(//最少两个元素
      alignment: const FractionalOffset(0.5, 1),//上面一层部件的位置,从左到右相对距离是1,0.5就是中间
      children: <Widget>[
    Container(
    decoration: BoxDecoration(//背景
      color: Colors.black,
    ),
      child:  CircleAvatar(//第一个在最底层 圆形头像
        backgroundImage: NetworkImage('https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=fb13bec8caea15ce41eee70f8e3b5dce/d1160924ab18972b2c2fd087e5cd7b899e510a62.jpg'),
        radius: 100.0,//弧度
      ),
    ),
      
    new Positioned(//
        top: 10.0,//上边距
        left: 20.0,//左边距
        child: new Text("永远年轻",style:TextStyle(color: Colors.white))),

  new Positioned(
        top: 150.0,//上边距
        left: 40.0,//左边距
        child: new Text("永远热泪盈眶",style:TextStyle(color: Colors.green)))


//        Container(//
//          decoration: BoxDecoration(//背景
//            color: Colors.orange,
//          ),
//          padding: EdgeInsets.all(10.0),//边距
//          child: Text('永远年轻,永远热泪盈眶'),
//        ),
//        


      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("层叠布局"),),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}