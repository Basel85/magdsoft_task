import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_states.dart';
import 'package:magdsoft_task/data/network/requests/login_request.dart';
import 'package:magdsoft_task/data/network/requests/verify_otp_request.dart';
import 'package:magdsoft_task/data/network/responses/login_response.dart';
import 'package:magdsoft_task/data/network/responses/verify_otp_response.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  late LoginResponse _loginResponse;
  late VerifyOtpResponse _verifyOtpResponse;
  AuthenticationCubit() : super(AuthenticationInitial());
  static AuthenticationCubit get(context) => BlocProvider.of(context);
  Future<void> loginUserByPhoneNumber(
      String fullname, String phonenumber) async {
    emit(AuthenticationLoginLoading());
    _loginResponse = await LoginRequest.loginUserByPhone(fullname, phonenumber);
    if (_loginResponse.statusCode == 200) {
      emit(AuthenticationLoginSuccess(
          _loginResponse.message, _loginResponse.code));
    } else {
      emit(AuthenticationLoginFailure(_loginResponse.message));
    }
  }

  Future<void> verifyUserOtp(String code, String phonenumber) async {
    emit(AuthenticationVerifyOtpLoading());
    _verifyOtpResponse =
        await VerifyOtpRequest.verifyUserOtp(code, phonenumber);
    if (_verifyOtpResponse.statusCode == 200) {
      emit(AuthenticationVerifyOtpSuccess(_verifyOtpResponse.message));
    } else {
      emit(AuthenticationVerifyOtpFailure(_verifyOtpResponse.message));
    }
  }

  void alertThatUnknownErrorHappenedwhileLogining() {
    emit(AuthenticationLoginFailure("Something went wrong!"));
  }
  void alertThatUnknownErrorHappenedwhileVerifyingOtp() {
    emit(AuthenticationVerifyOtpFailure("Something went wrong!"));
  }
}
