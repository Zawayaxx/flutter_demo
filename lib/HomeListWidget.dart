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

    var data = HomeListData("apple", "2.24万亿美元", "10", "预计06.00结束", "http://www.patrickvale.co.uk/getmedia/276e7f15-4eac-4514-a1c0-64a3b5b26242/apple1.jpg?width=900&height=550&ext=.jpg");
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
