import 'package:flutter/material.dart';

import 'package:sharedpreferencesflutter/src/SharedPreferences/user_shared_preferences.dart';
import 'package:sharedpreferencesflutter/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario = true;
  int _genero;
  String _nombre = 'Ruben';

  TextEditingController _textController;
  final preferencesUser = new SharedPreferencesUser();

  @override
  void initState() {
    preferencesUser.ultimaPagina = SettingsPage.routeName;
    _initData();
    _textController = new TextEditingController(text: _nombre);
  }

  _initData() {
    _genero = preferencesUser.genero;
    _nombre = preferencesUser.nombre;
    _colorSecundario = preferencesUser.colorSecundario;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor:
            (preferencesUser.colorSecundario) ? Colors.teal : Colors.deepOrange,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color Secundario'),
            onChanged: (value) => _persisteColor(value),
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: (val) => _persisteRadioButton(val),
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: (val) => _persisteRadioButton(val),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre del usuario',
              ),
              onChanged: (value) => _persisteName(value),
            ),
          ),
        ],
      ),
      drawer: MenuWidget(),
    );
  }

  _persisteRadioButton(int value) async {
    preferencesUser.genero = value;
    _genero = value;
    setState(() {});
  }

  _persisteColor(bool color) async {
    preferencesUser.colorSecundario = color;
    _colorSecundario = color;
    setState(() {});
  }

  _persisteName(String nombre) async {
    preferencesUser.nombre = nombre;
    _nombre = nombre;
    setState(() {});
  }
}
