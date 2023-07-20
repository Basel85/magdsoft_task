class LoginResponse {
  final int statusCode;
  final String message;
  final String code;
  LoginResponse(
      {required this.statusCode, required this.message, required this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> dataInJson) {
    return LoginResponse(
        statusCode: dataInJson['status'],
        message: dataInJson['message'],
        code: dataInJson['code']);
  }
}
