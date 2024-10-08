import 'package:seggtech/constantes/api_constantes.dart';
import 'package:seggtech/services/http_helper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:seggtech/services/share_preference/login_shared.dart';

class UserService extends HttpHelper {
  // Lire un utilisateur
  Future<Response?> getUser(String route, String userId) async {
    return await handleGetRequest('$route/$userId');
  }

  // Mettre à jour un utilisateur
  Future<dynamic> updateUser(String route, String userId, dynamic userData) async {
    try {
      var res = await http.put(
        Uri.parse('$baseApiUrlLocal$route/$userId'),
        body: jsonEncode(userData),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${ConnectedUser().getToken()}',
        },
      );
      return res;
    } on DioException catch (e) {
      print('PUT STATUS ERROR');
      print(e.response!.statusCode);
      return e.response;
    }
  }
  // Créer un nouvel utilisateur
  // Future<dynamic> createUser(String route, dynamic userData) async {
  //   try {
  //     var res = await http.post(
  //       Uri.parse(baseApiUrlLocal + route),
  //       body: jsonEncode(userData),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //         'Authorization': 'Bearer ${ConnectedUser().getToken()}',
  //       },
  //     );
  //     return res;
  //   } on DioError catch (e) {
  //     print('POST STATUS ERROR');
  //     print(e.response!.statusCode);
  //     return e.response;
  //   }
  // }



  // Supprimer un utilisateur
  // Future<dynamic> deleteUser(String route, String userId) async {
  //   try {
  //     var res = await http.delete(
  //       Uri.parse(baseApiUrlLocal + '$route/$userId'),
  //       headers: {
  //         'Authorization': 'Bearer ${ConnectedUser().getToken()}',
  //       },
  //     );
  //     return res;
  //   } on DioError catch (e) {
  //     print('DELETE STATUS ERROR');
  //     print(e.response!.statusCode);
  //     return e.response;
  //   }
  // }
}
