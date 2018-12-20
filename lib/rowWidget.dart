import 'package:flutter/material.dart';

void main()=>runApp(
  MyRowApp()
);

class MyRowApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Row水平方向布局"),),
          body: MyRowWidget(),
        ),
    );
  }
}

/**
 * 横向布局
 */
class MyRowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[

        Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
          child:  new RaisedButton(
            onPressed: (){},
            color: Colors.blue,
            child: new Text("blue Button"),
          ),
        ),


        Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
          child:  new RaisedButton(
            onPressed: (){},
            color: Colors.red,
            child: new Text("red Button"),
          ),
        ),


        Expanded(//水平充满,如果只有一个,一个横向充满,两个两个横向充满
          child:  new RaisedButton(
            onPressed: (){},
            color: Colors.orange,
            child: new Text("orange Button"),
          ),
        ),



      ],
    );
  }
}