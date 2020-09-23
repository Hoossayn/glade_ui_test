import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glade_ui_test/fundsTransfer/funds_transfer.dart';

class SellerTools extends StatefulWidget {
  @override
  SellerToolsState createState() => SellerToolsState();

}

class SellerToolsState extends State<SellerTools>  {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _fundsTransfer(context),
        _customer(),
        _invoices(),
        _Pos()
      ],
    );
  }

  Widget _fundsTransfer(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FundsTransfer()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            color: Colors.black26
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:18.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/marketing.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Funds Transfer',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 28.0,
                      ),
                    ),
                    Text('Sell Items and Tickets with Ease and',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _customer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          color: Colors.black26
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:18.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Image.asset('assets/marketing.png')),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Customers',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 28.0,
                      ),
                    ),
                    Text('See your Customers Details Customers',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios),

            ],
          ),
        ),
      ),
    );
  }
  Widget _invoices(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          color: Colors.black26
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:18.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/marketing.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Invoices',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 28.0,
                    ),
                  ),
                  Text('Send Invoice to Customers and get Paid',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios),

            ],
          ),
        ),
      ),
    );
  }
  Widget _Pos(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          color: Colors.black26
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:18.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/Payment.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('POS',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 28.0,
                    ),
                  ),
                  Text('Access Point of sale with Ease, Access',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios),

            ],
          ),
        ),
      ),
    );
  }

}