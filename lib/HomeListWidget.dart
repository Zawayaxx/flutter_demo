import 'package:flutter/material.dart';
import 'package:flutter_demo/HomeListData/HomeListData.dart';
import 'package:flutter_demo/HomeListItemWidget.dart';

class HomeListWidget extends StatefulWidget {
  @override
  _HomeListWidgetState createState() => _HomeListWidgetState();
}

class _HomeListWidgetState extends State<HomeListWidget> {
  List<HomeListData> homeList = List<HomeListData>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = HomeListData('反贪风暴4', 6.3, '林德禄', '古天乐/郑嘉颖/林峯', 29013,
        'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2551353482.webp');
    setState(() {
      homeList.add(data);
      homeList.add(data);
      homeList.add(data);
      homeList.add(data);
      homeList.add(data);
      homeList.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: homeList.length,
      itemBuilder: (context, index) {
        return HomeListItemWidget(homeList[index]);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
          color: Colors.black26,
        );
      },
    );
  }
}
