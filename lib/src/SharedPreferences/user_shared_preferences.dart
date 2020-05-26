import 'package:shared_preferences/shared_preferences.dart';

/*Implementing singleton pattern*/
class SharedPreferencesUser {
  static final SharedPreferencesUser _sharedPreferencesUserInstance =
      new SharedPreferencesUser._internal();

  /*When normal constructor execute, it will return the instance already created*/
  factory SharedPreferencesUser() {
    return _sharedPreferencesUserInstance;
  }

  SharedPreferencesUser._internal();

  SharedPreferences _sharedPreferences;

  initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  get genero {
    /*If genre doesn't exists, the default value will be 1 */
    return _sharedPreferences.getInt('genre') ?? 1;
  }

  set genero(int value) {
    _sharedPreferences.setInt('genre', value);
  }

  get colorSecundario {
    return _sharedPreferences.getBool('color') ?? true;
  }

  set colorSecundario(bool color) {
    _sharedPreferences.setBool('color', color);
  }

  get nombre {
    return _sharedPreferences.getString('nombre') ?? 'Sin nombre definido';
  }

  set nombre(String nombre) {
    _sharedPreferences.setString('nombre', nombre);
  }

  get lastPage {
    return _sharedPreferences.getString('nombre');
  }

  set lastPage(String nombre) {
    _sharedPreferences.setString('nombre', nombre);
  }

  get ultimaPagina {
    return _sharedPreferences.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String ultimaPagina) {
    _sharedPreferences.setString('ultimaPagina', ultimaPagina);
  }
}
