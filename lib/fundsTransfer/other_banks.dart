import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glade_ui_test/fundsTransfer/funds_transfer.dart';
import 'package:flutter_svg/svg.dart';



class OtherBanks extends StatefulWidget {
  @override
  _OtherBanksState createState() => _OtherBanksState();
}

class _OtherBanksState extends State<OtherBanks> with SingleTickerProviderStateMixin  {

  TextStyle style = TextStyle(
    color: Colors.black,
    fontFamily: 'Varela',
    fontSize: 20,
  );

  TabController _tabController;
  @override
  void initState(){
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Funds Transfer', style: TextStyle(color: Colors.lightBlue),),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.lightBlue,),
            onPressed: () {
              Navigator.pop(context, true);
            }),
      ),
      body: Column(
        children: <Widget>[
          Divider(height: 2,color: Colors.grey,),
          SizedBox(height: 30),
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
                    child: Text('Personal Info',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text('Business Info',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 15.0,
                        )),
                  ),
                  Tab(
                    child: Text('Security',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 15.0,
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Row(
              children: [
                Text('Transfer Mode',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 18.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _gladeAccountWidget(context),
              _otherBanksWidget()
            ],
          ),
          SizedBox(height: 10),
          Divider(height: 2,color: Colors.grey,),
          Container(
            height: MediaQuery.of(context).size.height - 400,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(height: 20),
                _fullName(),
                _PhoneNumber(),
                _bvn(),
                _emailAddress(),
                _referralCode(),
                SizedBox(height: 20),
                Center(
                  child: Text('SELECT BENEFICIARY',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontFamily: 'Varela',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Container(
                    width: 200,
                    height: 60.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.lightBlue,
                      elevation: 7.0,
                      child: InkWell(
                        onTap: ()  {
                          //_validateAndMakeRequest();
                        },
                        child: Center(
                          child: Text(
                            'SAVE CHANGES',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Varela',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          )

        ],
      ),
    );
  }
  Widget  _fullName(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Select your Bank',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextFormField(
              key: Key("Email Address"),
              keyboardType: TextInputType.text,
              style: style,
              // controller: _email,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                fillColor: Color(0xFFF5F8FF),
                filled: true,
                hintText: 'Selection your Bank',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelStyle: TextStyle(color: Colors.grey,fontFamily: 'Varela',
                ),
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget  _PhoneNumber(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account Number',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextFormField(
              key: Key("Email Address"),
              keyboardType: TextInputType.text,
              style: style,
              // controller: _email,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                fillColor: Color(0xFFF5F8FF),
                filled: true,
                hintText: 'Account Number',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelStyle: TextStyle(color: Colors.grey,fontFamily: 'Varela',
                ),
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget  _bvn(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account Name',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextFormField(
              key: Key("Email Address"),
              keyboardType: TextInputType.text,
              style: style,
              // controller: _email,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                fillColor: Color(0xFFF5F8FF),
                filled: true,
                hintText: 'Account Name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelStyle: TextStyle(color: Colors.grey,fontFamily: 'Varela',
                ),
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget  _emailAddress(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Amount',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextFormField(
              key: Key("Email Address"),
              keyboardType: TextInputType.text,
              style: style,
              // controller: _email,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                fillColor: Color(0xFFF5F8FF),
                filled: true,
                hintText: 'Amount',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelStyle: TextStyle(color: Colors.grey,fontFamily: 'Varela',
                ),
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget  _referralCode(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Narration',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextFormField(
              key: Key("Email Address"),
              keyboardType: TextInputType.text,
              style: style,
              // controller: _email,
              cursorColor: Colors.black,
              decoration: new InputDecoration(
                fillColor: Color(0xFFF5F8FF),
                filled: true,
                hintText: 'Narration',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelStyle: TextStyle(color: Colors.grey,fontFamily: 'Varela',
                ),
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.grey, width: 2.0, style: BorderStyle.solid)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _gladeAccountWidget(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FundsTransfer()));
      },
      child: Container(
        width: 170,
        height: 110,
        decoration: BoxDecoration(
            color: Color(0xFFF5F8FF),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:10.0, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.check_circle, color: Colors.transparent),
                ],
              ),
            ),
            SvgPicture.asset("assets/banks.svg", height: 30),
            SizedBox(height: 20,),
            Text('Glade Account',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 15.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otherBanksWidget(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 170,
        height: 110,
        decoration: BoxDecoration(
            color: Color(0xFFF5F8FF),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:10.0, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.check_circle, color: Colors.blue),
                ],
              ),
            ),
            SvgPicture.asset("assets/banks.svg", height: 30),
            SizedBox(height: 20,),
            Text('Other Banks',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 15.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
