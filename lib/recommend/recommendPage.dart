import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget {
  RecommendPageState createState() => new RecommendPageState();
}

class RecommendPageState extends State<RecommendPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text('推荐系统'),
            bottom: new TabBar(tabs: [
              new Tab(text: '接口',),
              new Tab(text: '硬件',),
              new Tab(text: '其他',),
            ]),
          ),
          body: new TabBarView(children: [
            new Center(child: new Text("接口")),
            new Center(child: new Text("硬件")),
            new Center(child: new Text("其他")),
          ]),
        ));
  }
}
