import 'package:flutter/material.dart';
import 'package:flutter_demo/dao/home_dao.dart';
import 'package:flutter_demo/model/common_model.dart';
import 'package:flutter_demo/model/grid_nav_model.dart';
import 'package:flutter_demo/model/home_model.dart';
import 'package:flutter_demo/model/sales_box_model.dart';
import 'package:flutter_demo/widget/grid_nav.dart';
import 'package:flutter_demo/widget/local_nav.dart';
import 'package:flutter_demo/widget/sales_box.dart';
import 'package:flutter_demo/widget/sub_nav.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'http://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg'
  ];
  double appBarAlpha = 0;
  List<CommonModel> localNavList = [];
  List<CommonModel> subNavList = [];
  GridNavModel gridNavModel;
  SalesBoxModel salesBoxModel;



  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(appBarAlpha);
  }

  loadData() async {
    HomeModel model = await HomeDao.fetch();
    setState(() {
      localNavList = model.localNavList;
      gridNavModel = model.gridNav;
      subNavList = model.subNavList;
      salesBoxModel = model.salesBox;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.depth == 0) {
                  //滚动且是列表滚动的时候
                  _onScroll(scrollNotification.metrics.pixels);
                }
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 160,
                    child: Swiper(
                      itemCount: _imageUrls.length,
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imageUrls[index],
                          fit: BoxFit.fill,
                        );
                      },
                      pagination: SwiperPagination(),
                    ),
                  ),
                  // 5个items
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                    child: LocalNav(localNavList: localNavList),
                  ),
                  GridNav(gridNavModel: gridNavModel),
                  SubNav(subNavList: subNavList),
                  SalesBox(salesBoxModel: salesBoxModel),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('首页'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
