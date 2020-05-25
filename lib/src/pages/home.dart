import 'package:flutter/material.dart';
import 'package:sharedpreferencesflutter/src/pages/settings.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User preferences'),
      ),
      drawer: createMenu(context),
      body: Column(
        children: <Widget>[
          Text('Color Secundario'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre usuario'),
          Divider(),
        ],
      ),
    );
  }

  Drawer createMenu(BuildContext context) {
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
