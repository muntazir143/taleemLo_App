import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:taleemLo/src/helper.dart';
import 'package:taleemLo/src/pages/about.dart';
import 'package:taleemLo/src/pages/homepage.dart';
import 'package:taleemLo/src/pages/login.dart';
import 'package:taleemLo/src/pages/profile_page.dart';
=======
import 'package:taleemLo/src/pages/about.dart';
import 'package:taleemLo/src/pages/homepage.dart';
import 'package:taleemLo/src/pages/profile_page.dart';
import 'package:taleemLo/src/pages/settings.dart';
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea

class DrawerItems {
  String title;
  IconData icon;
  DrawerItems(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {
  final drawerItems = [
    DrawerItems("Dashboard", Icons.dashboard),
    DrawerItems("Profile", Icons.person),
    DrawerItems("About", Icons.info),
<<<<<<< HEAD
=======
    DrawerItems("Settings", Icons.settings),
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
  ];
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  _getDrawerItems(int items) {
    switch (items) {
      case 0:
        return HomePage();
      case 1:
        return ProfilePage();
      case 2:
        return About();
<<<<<<< HEAD
=======
      case 3:
        return Settings();
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
      default:
        return print('Error');
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        title: Text(d.title),
        trailing: Icon(d.icon),
        selected: i == _selectedDrawerIndex,
        onTap: () {
          _onSelectItem(i);
        },
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('TaleemLo'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.lightBlue,
            Colors.blue[600],
            Colors.blue[900]
          ])),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlue,
                Colors.blue[600],
                Colors.blue[900]
              ])),
<<<<<<< HEAD
              accountEmail: Text(AppHelper.instance.studentModel.id.toString()),
              accountName: Text(AppHelper.instance.studentModel.name),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  AppHelper.instance.studentModel.name[0],
=======
              accountName: Text('TaleemLo'),
              accountEmail: Text('taleemlo@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'T',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                  style: TextStyle(fontSize: 25),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
<<<<<<< HEAD
                    AppHelper.instance.studentModel.name[0],
=======
                    'T',
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                  ),
                )
              ],
            ),
            Column(children: drawerOptions),
            Divider(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    title: Text('Logout'),
                    trailing: Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.of(context).pop();
<<<<<<< HEAD

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return Login();
                  }));
=======
>>>>>>> 5bd28953d5c475eb0df82bc5cfbe317c693caaea
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Version: 2.0.1'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: _getDrawerItems(_selectedDrawerIndex),
      ),
    );
  }
}
