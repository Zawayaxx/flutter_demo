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
              color: Colors.red,
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 30,
                      ),
                      child: TextField(
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: '标的物名称/位置/案号',
                            hintStyle: TextStyle(
                                fontFamily: 'MaterialIcons', fontSize: 15, color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            fillColor: Colors.white),

                      ),
                    ),
                  ),
                  Icon(Icons.map, color: Colors.white,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "地图",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                        maxLines: 2,
                      ),
                      Text(
                        "找房",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                        maxLines: 2,
                      ),
                    ],
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
                ))
          ],
        ));
  }
}
