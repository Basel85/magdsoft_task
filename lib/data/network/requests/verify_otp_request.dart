import 'dart:convert';

import 'package:http/http.dart';
import 'package:magdsoft_task/constants/end_points.dart';
import 'package:magdsoft_task/data/data_providers/remote/http_helper.dart';
import 'package:magdsoft_task/data/network/responses/verify_otp_response.dart';

class VerifyOtpRequest {
  static Future<VerifyOtpResponse> verifyUserOtp(
      String code, String phonenumber) async {
    Response response = await HttpHelper.postData(
        url: otp, body: {"code": code, "phone": phonenumber});
    Map<String, dynamic> dataInJson = json.decode(response.body);
    return VerifyOtpResponse.fromJson(dataInJson);
  }
}
