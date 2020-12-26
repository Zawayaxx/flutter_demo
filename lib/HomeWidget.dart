import 'package:flutter/material.dart';
import 'package:flutter_demo/HomeListWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeWidgetState();
  }
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.yellow,
            height: 80,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text("深圳", style: TextStyle(fontSize: 16)),
                Icon(Icons.search),
                Expanded(
                  flex: 1,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                        hintText: '电影 / 电视剧 / 影人',
                        hintStyle:
                        TextStyle(fontFamily: 'MaterialIcons', fontSize: 16),
                        contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        filled: true,
                        fillColor: Colors.black12),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: [
                          HomeListWidget(),
                          Center(child: Text("哈哈")),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}
