import 'package:flutter/material.dart';
import 'package:glade_ui_test/fundsTransfer/funds_transfer.dart';
import 'package:glade_ui_test/home/component/account_details_fields.dart';
import 'package:glade_ui_test/home/component/seller_tools.dart';
import '../../size_config.dart';
import 'category_tab_bar.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  CategoryTabBarState createState() => CategoryTabBarState();

}
class CategoryTabBarState extends State<HomeHeader> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState(){
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(25)),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          ClipPath(
            child: Image.asset(
              "assets/Group 5041.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: getProportionateScreenHeight(215),
            ),
           // clipper: CustomClipPath(),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height,
            top: getProportionateScreenWidth(200),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                  color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[

                ],
              ),
            ),
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-55),
            child: AccountDetailsField(),
          ),
        ],
      ),
    );
  }
}