import 'dart:convert';

import 'package:conduit/models/articles_response_entity.dart';
import 'package:http/http.dart' as http;

const BASE_URL = 'https://conduit.productionready.io/api';

Future<ArticlesResponseEntity> getArticles () async {
  final response = await http.get('$BASE_URL/articles?limit=200');

  if (response.statusCode == 200) {
    return ArticlesResponseEntity.fromJson(json.decode(response.body));
  } else {
    throw Exception('Could not download articles');
  }
}