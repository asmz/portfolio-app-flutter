import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClient {
  static Future<T> get<T>({
    Map<String, String>? queryParams,
    required T Function(dynamic) fromJson,
  }) async {
    final uri = Uri.parse(
      dotenv.get('TUMBLR_API_END_POINT'),
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
