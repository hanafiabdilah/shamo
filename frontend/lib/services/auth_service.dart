import 'dart:convert';

import 'package:shamo/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = "https://shamo.hhh.web.id/api";

  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    final url = Uri.parse('$baseUrl/register');
    final headers = <String, String>{'Content-Type': 'application/json'};
    final body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });
    final response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}
