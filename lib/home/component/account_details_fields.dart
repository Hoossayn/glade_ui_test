import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';


class AccountDetailsField extends StatelessWidget {

  const AccountDetailsField({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    bool status = false;

    return Container(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenWidth(160),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
            height: 30,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:18.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BUSINESS ACCOUNT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.swap_horiz, color: Colors.white,)
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NGN',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '600,650.00',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Available balance',
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:8.0, right: 10.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Name',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Skate Innovations',
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ClipOval(child: Image.asset("assets/Group 5040.png", height: 30, width: 30,))
                  ],
                ),
              )
            ],
          ),
        ],
      ),

    );
  }
}
