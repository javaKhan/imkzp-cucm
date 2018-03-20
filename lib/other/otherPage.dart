import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget{

  @override
  OtherPageState createState() {
    return new OtherPageState();
  }
}


class OtherPageState extends State<OtherPage> {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 3, child: new Scaffold(
      appBar: new AppBar(
        title: new Text('其他信息'),
        bottom: new TabBar(tabs: [
          new Tab(text: '第一',),
          new Tab(text: '第二',),
          new Tab(text: '第三',),
        ]),
      ),
      body: new TabBarView(
          children: [
          new Center(child: new Text("彻底断送了开始就1"),),
          new Center(child: new Text("彻底断送了开始就2"),),
          new Center(child: new Text("彻底断送了开始就3"),),
        ]
      ),
    ));
  }
}