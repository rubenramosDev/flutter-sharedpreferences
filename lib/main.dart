import 'package:flutter/material.dart';
import 'package:sharedpreferencesflutter/src/pages/home.dart';

import 'package:sharedpreferencesflutter/src/pages/settings.dart';
import 'package:sharedpreferencesflutter/src/SharedPreferences/user_shared_preferences.dart';

/*Before loading the app, we need to start our singleton object, so 
* it can be used all over the app*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = new SharedPreferencesUser();
  await sharedPreferences.initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final sharedPreferences = new SharedPreferencesUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: sharedPreferences.ultimaPagina,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
