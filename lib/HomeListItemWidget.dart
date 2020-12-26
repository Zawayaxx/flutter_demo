import 'package:flutter/material.dart';
import 'package:flutter_demo/HomeListData/HomeListData.dart';

class HomeListItemWidget extends StatefulWidget {

  HomeListData homeListData;

  HomeListItemWidget(this.homeListData);

  @override
  _HomeListItemWidgetState createState() => _HomeListItemWidgetState();
}

class _HomeListItemWidgetState extends State<HomeListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            widget.homeListData.images,
            width: 80,
            height: 120,
            fit: BoxFit.cover,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.homeListData.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.homeListData.rating.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text('导演: ' + widget.homeListData.directors,
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                  Text('主演: ' + widget.homeListData.casts,
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.homeListData.watchedPeople.toString() + '人看过',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
                OutlineButton(
                  child: Text(
                    '购票',
                    style: TextStyle(fontSize: 16),
                  ),
                  color: Colors.red,
                  textColor: Colors.red,
                  highlightedBorderColor: Colors.red,
                  borderSide: BorderSide(color: Colors.red),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
