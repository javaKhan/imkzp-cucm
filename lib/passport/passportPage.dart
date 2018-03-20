import 'package:flutter/material.dart';

class PassportPage extends StatefulWidget {
  PassportPageState createState() => new PassportPageState();
}

class PassportPageState extends State with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("通行证"),
          bottom: new TabBar(
//            indicatorColor: Colors.pinkAccent,
            labelColor: Colors.greenAccent,
            unselectedLabelColor: Colors.white,
            tabs: [
              new Tab(text: '接口'),
              new Tab(text: '硬件'),
              new Tab(text: '其他'),
            ],
          ),
        ),
        body: new TabBarView(
          children: [
            new Center(child: new Text("第一个")),
            new Center(child: new Text("第er个")),
            new Center(child: new Text("第ss个")),
          ]
        ),
      ),
    );
  }
}
