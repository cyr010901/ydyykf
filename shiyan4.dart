import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container组件demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CenterDemoPage() ,
    );
  }
}

class CenterDemoPage extends StatefulWidget{
  @override
  createState() => new CenterDemoPageState();
}

class CenterDemoPageState extends State<CenterDemoPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Container Widget Demo'),
      ),
      body:_buildDemo() ,
    );
  }

  Widget _buildDemo(){
    return new Center(
      child: Container(
        child: new Text('Hello Wolrd !'),
        alignment: Alignment.center, //设置对齐方式
        width: 300, //宽
        height:300, //高
        // color: Colors.redAccent,
        //设置边框
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0),
              colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)]
          ),
          color: Colors.blue,
          border: Border.all(
            color: Colors.black,
            width: 8.0,
          ),
        ),
        //内边距
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(10.0),
        //旋转
        transform: Matrix4.rotationZ(0.4),
      ),
    );
  }
}
