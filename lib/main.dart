import 'package:flutter/material.dart';
import 'package:cucm/passport/passportPage.dart';
import 'package:cucm/usercenter/userCenterPage.dart';
import 'package:cucm/recommend/recommendPage.dart';
import 'package:cucm/other/otherPage.dart';
import 'package:cucm/componet/TitleGroupList.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CUCMHomePage(title: 'CCTV User Center Monitor'),
    );
  }
}

class CUCMHomePage extends StatefulWidget{
  CUCMHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<CUCMHomePage> {
  int _currentPage = 0;
  PageController _controller = new PageController();
  List items = [
    new BottomNavigationBarItem(icon: new Icon(Icons.verified_user), title: new Text("通行证")),
    new BottomNavigationBarItem(icon: new Icon(Icons.account_box), title: new Text("用户中心")),
    new BottomNavigationBarItem(icon: new Icon(Icons.cloud_circle), title: new Text("推荐系统")),
    new BottomNavigationBarItem(icon: new Icon(Icons.settings_applications), title: new Text("其他信息"))
  ];
  void _handleBottomNavigationBarTap(int value){
    _controller.animateToPage(value, duration: new Duration(microseconds: 200), curve: Curves.ease);
    setState((){
      _currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        controller: _controller,
        children: <Widget>[
          new PassportPage(),
          new UserCenterPage(),
          new RecommendPage(),
          new TitleGroupList(title: 'ksdjfksdjjkj',),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pink,
        items: items,
        onTap: _handleBottomNavigationBarTap,
        currentIndex: _currentPage,
      ),
    );
  }
}
