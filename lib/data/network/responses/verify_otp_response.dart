class VerifyOtpResponse {
  final int statusCode;
  final String message;
  VerifyOtpResponse({required this.statusCode, required this.message});
  factory VerifyOtpResponse.fromJson(Map<String, dynamic> verifyOtpResponse) {
    return VerifyOtpResponse(statusCode: verifyOtpResponse['status'],message: verifyOtpResponse['message']);
  }
}
