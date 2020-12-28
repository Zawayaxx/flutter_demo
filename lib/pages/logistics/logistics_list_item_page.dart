import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/logistics/logistics_list_Data.dart';


class LogisticsListItemPage extends StatefulWidget {

  LogisticsListData logisticsListData;

  LogisticsListItemPage(this.logisticsListData);
  @override
  _LogisticsListItemPageState createState() => _LogisticsListItemPageState();
}

class _LogisticsListItemPageState extends State<LogisticsListItemPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          widget.logisticsListData.images),
                      fit: BoxFit.cover))),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.logisticsListData.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "RMB",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          Text("当前价",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.red)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(widget.logisticsListData.money,
                          style: TextStyle(fontSize: 18, color: Colors.red))
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text("出价 ${widget.logisticsListData.count}",
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(widget.logisticsListData.endTime,
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
