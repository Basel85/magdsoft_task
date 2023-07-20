class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final String successMessage;
  final String code;
  AuthenticationSuccess(this.successMessage, this.code);
}

class AuthenticationFailure extends AuthenticationState {
  final String errorMessage;
  AuthenticationFailure(this.errorMessage);
}
