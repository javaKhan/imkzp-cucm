import 'package:flutter/material.dart';
import '../componet/TitleGroupList.dart';
import 'ucApi.dart';
class UserCenterPage extends StatefulWidget {
  UserCenterPageState createState()=>new UserCenterPageState();
}

class UserCenterPageState extends State<UserCenterPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("用户中心信息"),
          bottom: new TabBar(tabs: [
            new Tab(text: '接口',),
            new Tab(text: '硬件',),
            new Tab(text: '其他',),
          ]),
        ),
        body: new TabBarView(
          children:[
            new UcApi(),
            new UcApi(),
            new UcApi(),
          ]
        ),
      ),
    );
  }

}
