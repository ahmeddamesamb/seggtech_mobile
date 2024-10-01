import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static SharedPreferences? prefs;
  // Méthode d'initialisation
  static Future<void> initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }
}
