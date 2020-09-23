import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glade_ui_test/home/component/seller_tools.dart';


class CategoryTabBar extends StatefulWidget {
  @override
  CategoryTabBarState createState() => CategoryTabBarState();
}
class CategoryTabBarState extends State<CategoryTabBar> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState(){
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: new EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
        child: Container(
          height: 30,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.orange
            ),
            isScrollable: true,
            labelPadding: EdgeInsets.only(left:15.0, right: 15.0),
            unselectedLabelColor: Colors.black45,
            tabs: <Widget>[
              Tab(
                child: Text('Overview',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    ),
                ),
              ),
              Tab(
                child: Text('Sellers Tool',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    )),
              ),
              Tab(
                child: Text('Payment',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    )),
              ),
              Tab(
                child: Text('Business',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    )),
              ),
            ],
          ),
        ),
      ),
      //SizedBox(height: 20),
      Container(
        height: 440.0,
        width: double.infinity,
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            SellerTools(),
            SellerTools(),
            SellerTools(),
            SellerTools(),
          ],
        ),
      ),
    ],
  );
  }

}