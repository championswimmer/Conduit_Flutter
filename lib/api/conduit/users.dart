import 'dart:convert';

import 'package:conduit/api/conduit/common.dart';
import 'package:conduit/models/user_response_entity.dart';
import 'package:http/http.dart' as http;

Future<UserResponseEntity> loginUser(String email, String password) async {
  final response = await http.post(
      '$BASE_URL/user/login',
      body: {
        'user': {
          'email': email,
          'password': password
        }
      }
  );
  if (response.statusCode == 200) {
    return UserResponseEntity.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error logging in');
  }
}