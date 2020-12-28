// import 'package:flutter/material.dart';
// import 'package:flutter_demo/HomeListData/HomeListData.dart';

// class HomeListItemWidget extends StatefulWidget {
//   HomeListData homeListData;

//   HomeListItemWidget(this.homeListData);

//   @override
//   _HomeListItemWidgetState createState() => _HomeListItemWidgetState();
// }

// class _HomeListItemWidgetState extends State<HomeListItemWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 140,
//       padding: EdgeInsets.all(10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//               width: 120,
//               height: 120,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: NetworkImage(
//                           widget.homeListData.images),
//                       fit: BoxFit.cover))),
//           Expanded(
//             flex: 1,
//             child: Padding(
//               padding: EdgeInsets.only(left: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.homeListData.title,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 10)),
//                   Row(
//                     children: [
//                       Column(
//                         children: [
//                           Text(
//                             "RMB",
//                             style:
//                                 TextStyle(fontSize: 14, color: Colors.black54),
//                           ),
//                           Text("当前价",
//                               style: TextStyle(
//                                   fontSize: 11, color: Colors.red)),
//                         ],
//                       ),
//                       Padding(padding: EdgeInsets.only(left: 20)),
//                       Text(widget.homeListData.money,
//                           style: TextStyle(fontSize: 18, color: Colors.red))
//                     ],
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 10)),
//                   Text("出价 ${widget.homeListData.count}",
//                       style: TextStyle(fontSize: 14, color: Colors.black54)),
//                   Padding(padding: EdgeInsets.only(top: 5)),
//                   Text(widget.homeListData.endTime,
//                       style: TextStyle(fontSize: 14, color: Colors.black54)),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
