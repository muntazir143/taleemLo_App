import 'package:flutter/material.dart';
import 'package:taleemLo/src/pages/about.dart';
import 'package:taleemLo/src/pages/homepage.dart';
import 'package:taleemLo/src/pages/profile_page.dart';
import 'package:taleemLo/src/pages/settings.dart';

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
    DrawerItems("Settings", Icons.settings),
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
      case 3:
        return Settings();
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
              accountName: Text('TaleemLo'),
              accountEmail: Text('taleemlo@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'T',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'T',
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
