import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpHelper {
  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query}) async {
    return await http.get(Uri.parse(url));
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    
    return await http.post(Uri.parse(url), body: json.encode(body), headers: headers);
  }
}
