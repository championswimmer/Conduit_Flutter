import 'dart:convert';

import 'package:conduit/api/conduit/common.dart';
import 'package:conduit/models/articles_response_entity.dart';
import 'package:http/http.dart' as http;

Future<ArticlesResponseEntity> getArticles () async {
  final response = await http.get('$BASE_URL/articles?limit=200');

  if (response.statusCode == 200) {
    return ArticlesResponseEntity.fromJson(json.decode(response.body));
  } else {
    throw Exception('Could not download articles');
  }
}