import 'package:flutter/material.dart';

/**
 * 用户中心 --API接口列表
 */
class UcApi extends StatefulWidget {
  @override
  State createState() {
    return new UcApiState();
  }
}

class UcApiState extends State<UcApi> {
  List<ApiItem> apiList = <ApiItem>[
    new ApiItem(itemType: 'title', title: '用户接口'),
    new ApiItem(itemType: 'api', title: '获取用户昵称'),
    new ApiItem(itemType: 'api', title: '获取用户昵称头像'),
    new ApiItem(itemType: 'api', title: '获取用户昵称(熊猫)'),
    new ApiItem(itemType: 'api', title: '修改用户昵称'),
    new ApiItem(itemType: 'api', title: '修改用户昵称(熊猫)'),
    new ApiItem(itemType: 'api', title: '修改用户头像'),
    new ApiItem(itemType: 'api', title: '内网获取用户信息'),

    new ApiItem(itemType: 'title', title: '播放记录接口'),
    new ApiItem(itemType: 'api', title: '获取播放记录及进度'),
    new ApiItem(itemType: 'api', title: '添加视频播放记录'),
    new ApiItem(itemType: 'api', title: '设置视频播放进度'),
    new ApiItem(itemType: 'api', title: '获取用户视频播放记录列表'),
    new ApiItem(itemType: 'api', title: '删除视频播放记录'),
    new ApiItem(itemType: 'api', title: '清空用户播放记录'),

    new ApiItem(itemType: 'title', title: '收藏接口'),
    new ApiItem(itemType: 'api', title: '添加收藏信息'),
    new ApiItem(itemType: 'api', title: '获取收藏信息'),
    new ApiItem(itemType: 'api', title: '获取收藏信息（熊猫）'),
    new ApiItem(itemType: 'api', title: '获取收藏状态'),
    new ApiItem(itemType: 'api', title: '删除用户单条收藏'),
    new ApiItem(itemType: 'api', title: '清空用户收藏'),

    new ApiItem(itemType: 'title', title: '预约接口'),
    new ApiItem(itemType: 'api', title: '添加预约'),
    new ApiItem(itemType: 'api', title: '删除预约'),
    new ApiItem(itemType: 'api', title: '删除全部预约'),
    new ApiItem(itemType: 'api', title: '获取预约'),
  ];

  /**
   * api line 样式
   */
  _buildApi(ApiItem item) {
    return new Container(
      decoration: new BoxDecoration(
        border: new Border(
          bottom: new BorderSide(color: Colors.black12),
        )
      ),
      child: new ListTile(
        title : new Text(
          item.title,
          style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey[900]
          ),
        ),
        trailing: new Icon(Icons.arrow_forward_ios,color: Colors.blue[300],),
      ),
    );
  }

  /**
   * 分组api样式
   */
  _buildTitle(ApiItem item) {
    ListTile apiItem =  new ListTile(
      leading: new Icon(Icons.star,color: Colors.blue,),
      title: new Text(
        item.title,
        style: new TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic ),
      ),
    );

    return new Container(
      decoration: new BoxDecoration(
        border: new Border(bottom: new BorderSide(color: Colors.black38))
      ),
      child: apiItem,
    );
  }

  _apiBuilder(BuildContext context, int index) {
    if ("title" == apiList[index].itemType) {
      return _buildTitle(apiList[index]);
    } else {
      return _buildApi(apiList[index]);
    }
  }


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: apiList.length,
      itemBuilder: _apiBuilder,
    );
  }
}

class ApiItem {
  String itemType = "api"; //title 或 api
  String title;

  String route;

  ApiItem({itemType, title, route}) {
    this.itemType = itemType;
    this.title = title;
    this.route = route;
  }
}
