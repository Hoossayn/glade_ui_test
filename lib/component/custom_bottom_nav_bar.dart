import 'package:flutter/material.dart';
import '../size_config.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 80,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/Group 4662.png",
                title: "Home",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                    //    builder: (context) => EventsScreen(),
                      ));
                },
              ),
              NavItem(
                icon: "assets/Group 4662.png",
                title: "Funds Transfer",
                isActive: true,
                press: () {},
              ),
              NavItem(
                icon: "assets/Group 4662.png",
                title: "Loan",
                press: () {},
              ),

              NavItem(
                icon: "assets/Group 4662.png",
                title: "Invoice",
                press: () {},
              ),

              NavItem(
                icon: "assets/Group 4662.png",
                title: "Cards",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.press,
    this.isActive = false,
  }) : super(key: key);
  final String icon, title;
  final GestureTapCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(5),
          height: getProportionateScreenWidth(60),
          width: getProportionateScreenWidth(60),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            //boxShadow: [if (isActive) kDefualtShadow],
          ),
          child: Column(
            children: [
              Image.asset(icon, height: 28),

              Spacer(),
              Text(
                title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
