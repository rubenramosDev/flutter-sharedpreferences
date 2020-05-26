import 'package:flutter/material.dart';

import 'package:sharedpreferencesflutter/src/SharedPreferences/user_shared_preferences.dart';
import 'package:sharedpreferencesflutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new SharedPreferencesUser();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('User preferences'),
        backgroundColor:
            (prefs.colorSecundario) ? Colors.teal : Colors.deepOrange,
      ),
      drawer: MenuWidget(),
      body: Column(
        children: <Widget>[
          Text('Color Secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario: ${prefs.nombre}'),
          Divider(),
        ],
      ),
    );
  }
}
