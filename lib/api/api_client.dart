import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portfolio_app_flutter/constants/environment.dart';

class ApiClient {
  static Future<T> get<T>({
    Map<String, String>? queryParams,
    required T Function(dynamic) fromJson,
  }) async {
    final uri = Uri.parse(
      Environment.tumblrApiEndPoint,
    ).replace(queryParameters: queryParams);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
