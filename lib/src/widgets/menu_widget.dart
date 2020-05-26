import 'package:flutter/material.dart';
import 'package:sharedpreferencesflutter/src/pages/home.dart';
import 'package:sharedpreferencesflutter/src/pages/settings.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
            leading: Icon(
              Icons.account_circle,
              color: Colors.deepOrange,
            ),
          ),
          ListTile(
            title: Text('Images'),
            onTap: () {},
            leading: Icon(
              Icons.image,
              color: Colors.deepOrange,
            ),
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, SettingsPage.routeName),
            leading: Icon(
              Icons.settings,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
