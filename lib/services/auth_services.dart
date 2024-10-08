import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seggtech/services/http_helper.dart';
import 'package:seggtech/services/share_preference/login_shared.dart';

import '../constantes/api_constantes.dart';

class AuthService extends HttpHelper {
  ConnectedUser userconnect = ConnectedUser();

  Future<dynamic> login(String route, dynamic data) async {
    try {
      var res = await http.post(
        Uri.parse(baseApiUrlLocal + route),
        body: data,
      );

      if (res.statusCode == 201 || res.statusCode == 200) {
        ConnectedUser().saveToken(json.decode(res.body)['token']);
        ConnectedUser().saveCurrentUser(json.decode(res.body)['user']);
      }
      print("++++++++++++ USER CONNECT ++++++++++++++");
      print(userconnect.getCurrentUser());
      return res;
    } catch (e) {
      print(e);
      throw Exception(
          'Une erreur s\'est produite, veuillez réessayer plus tard.');
    }
  }
}
