import 'package:flutter/material.dart';
import 'package:glade_ui_test/fundsTransfer/funds_transfer.dart';
import 'package:glade_ui_test/profile/profile_screen.dart';
import 'component/app_bar.dart';
import 'component/custom_bottom_nav_bar.dart';
import 'home/component/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: ClipOval(child: Image.asset("assets/Notification.png")),
            onPressed: () {},
          )
        ],
      ),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('_user.image'),
                      radius: 30.0,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'userName',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Varela',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),

                        Text(
                          'userName@test.com',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Varela',
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.home, color: Colors.blue),
                ),
                title: Text('Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold
                  ),),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.monetization_on, color: Colors.blue),
                ),
                title: Text('Transaction',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold
                  ),),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => FundsTransfer()));
                  // Update the state of the app.
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person, color: Colors.blue),
                ),
                title: Text('Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold
                  ),),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.settings, color: Colors.blue),
                ),
                title: Text('Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold
                  ),),
                onTap: () {
                  /*  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings())
                  );*/
                },
              ),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.exit_to_app, color: Colors.blue),
                ),
                title: Text('Logout',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold
                  ),),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
