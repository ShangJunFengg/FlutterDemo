import 'package:flutter/material.dart';

void main() => runApp(GridViewApp());

/**
 * 动态网格
 */
class GridViewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body:MyGridView2(),
      ),
    );
  }
}


/**
 * 新的编写方式
 */
class MyGridView2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,//每一行的数量
          mainAxisSpacing: 13.0,//每一行之间的距离x轴
          crossAxisSpacing: 12.0,//每一竖之间的距离y轴之间的距离
          childAspectRatio: 0.7//长宽比
      ),
      children: <Widget>[
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mt/2018/11/30/093453.59629589_185X277X4.jpg',fit: BoxFit.cover,),
      ],
    );
  }
}


/**
 * 旧的布局方式
 */
class MyGridView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      padding: const EdgeInsets.all(20.0),//网格间距
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        const Text("dasdasdsadsa"),
        const Text("dasdasdsadsa"),
        const Text("dasdasdsadsa"),
        const Text("dasdasdsadsa"),
        const Text("dasdasdsadsa"),
      ],
    );
  }

}

