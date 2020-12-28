// import 'package:flutter/material.dart';
// import 'package:flutter_demo/HomeListData/HomeListData.dart';
// import 'package:flutter_demo/temp/HomeListData/HomeListItemWidget.dart';

// class HomeListWidget extends StatefulWidget {
//   @override
//   _HomeListWidgetState createState() => _HomeListWidgetState();
// }

// class _HomeListWidgetState extends State<HomeListWidget> {
//   List<HomeListData> homeList = List<HomeListData>();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     var data = HomeListData("Apple", "2.24万亿美元", "10", "预计06:00结束", "http://www.patrickvale.co.uk/getmedia/276e7f15-4eac-4514-a1c0-64a3b5b26242/apple1.jpg?width=900&height=550&ext=.jpg");
//     var data1 = HomeListData("HuaWei", "未上市", "7", "预计24:00结束", "https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=c27bb34b683e6709a10043ff0bc69fb8/faedab64034f78f092cbd59f6e310a55b2191c9d.jpg");
//     var data2 = HomeListData("SamSung", "3200亿美元", "3", "预计07:15结束", "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.0730news.com%2Fuploads%2F20160707%2F1467853544145232.jpg&refer=http%3A%2F%2Fwww.0730news.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1611559831&t=49d514b4e8255a8f661edc7df48a56ee");
//     var data3 = HomeListData("XiaoMi", "8159.26亿港元", "8", "预计09:20结束", "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbeareyes.com.cn%2F2%2Flib%2F201909%2F10%2F008%2Fshow-s.jpg&refer=http%3A%2F%2Fbeareyes.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1611560000&t=7bbb98e2e17e3598ce90c23634662fc3");
//     var data4 = HomeListData("Oppo", "未上市", "12", "预计11:45结束", "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2165587161,1907550903&fm=26&gp=0.jpg");
//     var data5 = HomeListData("Vivo", "9.02亿美元", "14", "预计18:25结束", "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=988736507,3155501298&fm=11&gp=0.jpg");
//     var data6 = HomeListData("OnePlus", "未上市", "20", "预计08:00结束", "https://pics7.baidu.com/feed/b151f8198618367a530379f0c099e8d2b21ce502.jpeg?token=c10eaa37031c1968639e85eec6f66ac8");
//     setState(() {
//       homeList.add(data);
//       homeList.add(data1);
//       homeList.add(data2);
//       homeList.add(data3);
//       homeList.add(data4);
//       homeList.add(data5);
//       homeList.add(data6);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: homeList.length,
//       itemBuilder: (context, index) {
//         return HomeListItemWidget(homeList[index]);
//       },
//       separatorBuilder: (context, index) {
//         return Divider(
//           height: 1,
//           color: Colors.black26,
//         );
//       },
//     );
//   }
// }
