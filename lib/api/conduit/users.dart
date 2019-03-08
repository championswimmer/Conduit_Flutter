import 'dart:convert';

import 'package:conduit/api/conduit/common.dart';
import 'package:conduit/models/user_request_entity.dart';
import 'package:conduit/models/user_response_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<UserResponseEntity> loginUser(UserRequestUser user) async {
  debugPrint(json.encode(UserRequestEntity(user: user)));
  final response = await http.post('$BASE_URL/users/login',
      body: json.encode(UserRequestEntity(user: user)),
      headers: {'Content-Type': 'application/json'});
  if (response.statusCode == 200) {
    return UserResponseEntity.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error logging in');
  }
}
