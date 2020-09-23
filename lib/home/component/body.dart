import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'category_tab_bar.dart';
import 'home_header.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
            child: HomeHeader()
        ),

        Container(
            child: Column(
              children: [
                SizedBox(height: 70),
                CategoryTabBar(),
              ],
            ))
        //VerticalSpacing(),
        //TopTravelers(),
       // VerticalSpacing(),
      ],
    );
  }
}
