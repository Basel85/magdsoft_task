import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_states.dart';
import 'package:magdsoft_task/data/network/requests/login_request.dart';
import 'package:magdsoft_task/data/network/responses/login_response.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  late LoginResponse _loginResponse;
  AuthenticationCubit() : super(AuthenticationInitial());
  static AuthenticationCubit get(context) => BlocProvider.of(context);
  Future<void> loginUserByPhoneNumber(
      String fullname, String phonenumber) async {
    emit(AuthenticationLoading());
    _loginResponse = await LoginRequest.loginUserByPhone(fullname, phonenumber);
    if (_loginResponse.statusCode == 200) {
      emit(AuthenticationSuccess(_loginResponse.message, _loginResponse.code));
    } else {
      emit(AuthenticationFailure(_loginResponse.message));
    }
  }

  void alertThatUnknownErrorHappened() {
    emit(AuthenticationFailure("Something went wrong!"));
  }
}
