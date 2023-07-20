import 'dart:convert';

import 'package:http/http.dart';
import 'package:magdsoft_task/constants/end_points.dart';
import 'package:magdsoft_task/data/data_providers/remote/http_helper.dart';
import 'package:magdsoft_task/data/network/responses/login_response.dart';

class LoginRequest {
  static Future<LoginResponse> loginUserByPhone(
      String fullname, String phonenumber) async {
    Response response = await HttpHelper.postData(
        url: verifyPhone, body: {"phone": phonenumber, "name": fullname});
    Map<String, dynamic> dataInJson = json.decode(response.body);
    return LoginResponse.fromJson(dataInJson);
  }
}
