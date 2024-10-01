import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:seggtech/services/share_preference/shared_helper.dart';

import '../../model/user.dart';

@JsonSerializable()
class ConnectedUser extends SharedHelper {
  // Assure l'initialisation avant d'utiliser prefs
  Future<void> _ensurePrefsInitialized() async {
    if (SharedHelper.prefs == null) {
      await SharedHelper.initPrefs();
    }
  }

  Future<void> saveToken(String token) async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    await SharedHelper.prefs?.setString("token", token);
  }

  Future<String?> getToken() async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    return SharedHelper.prefs?.getString("token");
  }

  Future<void> saveCurrentUser(dynamic user) async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    await SharedHelper.prefs?.setString("user", jsonEncode(user));
  }

  Future<User?> getCurrentUser() async {
    await _ensurePrefsInitialized();
    var userJson = SharedHelper.prefs?.getString("user");
    if (userJson != null) {
      try {
        return User.fromJson(
            jsonDecode(userJson)); // Utilise la méthode générée
      } catch (e) {
        print('Erreur lors de la conversion de l\'utilisateur : $e');
        return null;
      }
    } else {
      return null;
    }
  }

  Future<void> logOut() async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    SharedHelper.prefs?.remove('user');
  }

  Future<void> setFirstConnection(bool isFirst) async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    await SharedHelper.prefs?.setBool("firtsCnnect", isFirst);
  }

  Future<bool?> isFirstConnection() async {
    await _ensurePrefsInitialized(); // S'assurer que prefs est initialisé
    return SharedHelper.prefs?.getBool("firtsCnnect");
  }
}
