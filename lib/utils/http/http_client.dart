import 'dart:convert';

import 'package:http/http.dart';
class THttpHelper {
  static const String _baseUrl = 'your/api/here.com';

  // Helper method to make a GET Request
  static Future<Map<String, dynamic>> getRequest(String endPoint) async {
    Uri uri = Uri.parse('$_baseUrl/$endPoint');
    final response = await get(uri);
    return _handleResponse(response);
  }

  // Helper method to make a POST Request
  static Future<Map<String, dynamic>> postRequest(String endPoint, dynamic data) async {
    Uri uri = Uri.parse('$_baseUrl/$endPoint');
    Map<String, String> headers = {
      'content-type': 'application/json'
    };
    final response = await post(uri, headers: headers, body: jsonEncode(data));
    return _handleResponse(response);
  }

  // Helper method to make a PUT Request
  static Future<Map<String, dynamic>> putRequest(String endPoint, dynamic data) async {
    Uri uri = Uri.parse('$_baseUrl/$endPoint');
    Map<String, String> headers = {
      'content-type': 'application/json'
    };
    final response = await put(uri, headers: headers, body: jsonEncode(data));
    return _handleResponse(response);
  }

  // Helper method to make a DELETE Request
  static Future<Map<String, dynamic>> deleteRequest(String endPoint) async {
    Uri uri = Uri.parse('$_baseUrl/$endPoint');
    final response = await delete(uri);
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}