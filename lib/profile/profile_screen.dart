import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  TextStyle style = TextStyle(
    color: Colors.black,
    fontFamily: 'Varela',
    fontSize: 20,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile', style: TextStyle(color: Colors.lightBlue),),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),

                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Personal Info',
                              style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),

                  ),
                  Positioned(
                    left: 195,
                    child: Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Security',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                color: Colors.blue
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                        ,
                      ),
                      height: 50,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Business Info',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 15.0,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/Group 5030.png'
                ), fit: BoxFit.fill
              ),
            ),
          ),
          Text('Sum Devon',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 18.0,
            ),
          ),
           Text('Square Motions',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10),
          Divider(height: 2,color: Colors.grey,),
          Container(
            height: MediaQuery.of(context).size.height - 400,
            child: ListView(
              children: [
                SizedBox(height: 20),
                _fullName(),
                _PhoneNumber(),
                _bvn(),
                _emailAddress(),
                _referralCode(),
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
          Text('Full Name',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                fontWeight: FontWeight.normal
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
          Text('Phone Number',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                fontWeight: FontWeight.normal
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
          Text('BVN ID',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                fontWeight: FontWeight.normal
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
          Text('Email Address',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                fontWeight: FontWeight.normal
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
          Text('Referral Code',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 15.0,
                fontWeight: FontWeight.normal
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
}
