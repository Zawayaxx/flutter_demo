import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'logistics/logistics_list_page.dart';

class LogisticsPage extends StatefulWidget {
  @override
  _LogisticsPageState createState() => _LogisticsPageState();
}

class _LogisticsPageState extends State<LogisticsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("物流")),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints.expand(height: 50),
                        child: TabBar(
                            unselectedLabelColor: Colors.black12,
                            labelColor: Colors.black87,
                            indicatorColor: Colors.black87,
                            tabs: <Widget>[
                              Tab(text: '待配送'),
                              Tab(text: '待完成'),
                              Tab(text: '已完成'),
                              Tab(text: '已取消'),
                            ]),
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            children: <Widget>[
                              LogisticsListPage(),
                              LogisticsListPage(),
                              LogisticsListPage(),
                              LogisticsListPage(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
