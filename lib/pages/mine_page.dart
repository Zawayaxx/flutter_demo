import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.message), tooltip: "消息", onPressed: () {}),
          IconButton(
              icon: Icon(Icons.settings), tooltip: "设置", onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 120,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                // 圆角头像
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3052924348,374840380&fm=26&gp=0.jpg"),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                // 个人信息
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30)),
                    Text("18566350422", style: TextStyle(fontSize: 20)),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text("zw", style: TextStyle(fontSize: 20))
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("账号设置"),
              leading: new Icon(Icons.account_circle_rounded),
              trailing: new Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("物流信息"),
              leading: new Icon(Icons.email),
              trailing: new Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("关于我们"),
              leading: new Icon(Icons.directions_bus),
              trailing: new Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("系统设置"),
              leading: new Icon(Icons.settings),
              trailing: new Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("联系电话"),
              leading: new Icon(Icons.phone),
              subtitle: new Text("010-12345678"),
              trailing: new Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
