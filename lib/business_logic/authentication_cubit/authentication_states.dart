class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoginLoading extends AuthenticationState {}

class AuthenticationLoginSuccess extends AuthenticationState {
  final String successMessage;
  final String code;
  AuthenticationLoginSuccess(this.successMessage, this.code);
}

class AuthenticationLoginFailure extends AuthenticationState {
  final String errorMessage;
  AuthenticationLoginFailure(this.errorMessage);
}

class AuthenticationVerifyOtpLoading extends AuthenticationState {}

class AuthenticationVerifyOtpSuccess extends AuthenticationState {
  final String successMessage;

  AuthenticationVerifyOtpSuccess(this.successMessage);
}

class AuthenticationVerifyOtpFailure extends AuthenticationState {
  final String failureMessage;

  AuthenticationVerifyOtpFailure(this.failureMessage);
}
