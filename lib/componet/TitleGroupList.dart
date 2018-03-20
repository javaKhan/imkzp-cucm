import 'package:flutter/material.dart';

class TitleGroupList extends StatefulWidget {

  TitleGroupList({Key key,this.title}): super (key: key);

  String title ;

  @override
  State createState() {
    return new TitleGroupListState();
  }

}

class TitleGroupListState extends State<TitleGroupList>{
  List list = [];
  @override
  void initState(){
    super.initState();
    for(int i=0;i<20;i++){
      this.list.add(i.toString());
    }
  }

  _buildList(BuildContext context,int index){
    return new ListTile(
      title: new Text(list[index],style: new TextStyle(fontSize: 15.0),),
    );
  }

  @override
  Widget build(BuildContext context) {
    var content ;
    if(list.isEmpty){
      content = new Center(
        child: new CircularProgressIndicator(),
      );
    }else{
        content = new ListView.builder(
          itemCount: list.length,
          itemBuilder: _buildList,
        );
    }
    return new Scaffold(
      body: content,
    );
  }
}