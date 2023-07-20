import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_cubit.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_states.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/shared/background_by_linear_gradient.dart';
import 'package:magdsoft_task/presentation/view/shared/custom_button.dart';
import 'package:magdsoft_task/presentation/view/verify_screen/otp_field.dart';
import 'package:magdsoft_task/presentation/widget/dialogue.dart';
import 'package:sizer/sizer.dart';

class VerifyScreen extends StatefulWidget {
  final String fullname;
  final String phonenumber;
  final String otpCode;
  const VerifyScreen(
      {super.key,
      required this.fullname,
      required this.phonenumber,
      required this.otpCode});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _firstDigitController = TextEditingController();
  final TextEditingController _secondDigitController = TextEditingController();
  final TextEditingController _thirdDigitController = TextEditingController();
  final TextEditingController _fourthDigitController = TextEditingController();
  void verifyOtp() async {
    FocusScope.of(context).unfocus();
    String otpCode = _firstDigitController.text +
        _secondDigitController.text +
        _thirdDigitController.text +
        _fourthDigitController.text;
    try {
      await AuthenticationCubit.get(context).verifyUserOtp(otpCode, widget.phonenumber);
    } catch (_) {
      AuthenticationCubit.get(context).alertThatUnknownErrorHappenedwhileVerifyingOtp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocListener<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
          if (state is AuthenticationVerifyOtpLoading) {
            showProgressDialog(context);
          } else if (state is AuthenticationVerifyOtpSuccess) {
            Navigator.pop(context);
            Fluttertoast.showToast(
                msg: state.successMessage, toastLength: Toast.LENGTH_LONG);
            Navigator.pushNamedAndRemoveUntil(context, '/help', (route) => false);
          } else if (state is AuthenticationVerifyOtpFailure) {
            Navigator.pop(context);
            Fluttertoast.showToast(msg: state.failureMessage, toastLength: Toast.LENGTH_LONG);
          }
        },
        listenWhen: (previous, current) =>
            current is AuthenticationVerifyOtpLoading ||
            current is AuthenticationVerifyOtpSuccess ||
            current is AuthenticationVerifyOtpFailure,
        child: Stack(
          children: [
            SizedBox(
              width: 100.w,
              height: 100.h,
            ),
            const BackgroundByLinearGradient(),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.getPartOfHeight(62).h,
                  ),
                  Text(
                    "Verify Phone",
                    style: AppTextStyle.colorWhiteFamilyInterWeightw400Size30,
                  ),
                  SizedBox(
                    height: SizeConfig.getPartOfHeight(138).h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.getPartOfWidth(19).w),
                          child: OtpField(
                            controller: _firstDigitController,
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.getPartOfWidth(19).w),
                          child: OtpField(
                            controller: _secondDigitController,
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.getPartOfWidth(19).w),
                          child: OtpField(
                            controller: _thirdDigitController,
                          )),
                      OtpField(
                        controller: _fourthDigitController,
                        isLastDigit: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.getPartOfHeight(90).h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Your otp code is ${widget.otpCode}",
                          toastLength: Toast.LENGTH_LONG);
                    },
                    child: Text(
                      "Resend Code",
                      textAlign: TextAlign.center,
                      style: AppTextStyle
                          .colorSecondBlueFamilyInterWeightw400Size20,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.getPartOfHeight(78).h,
                  ),
                  CustomButton(
                    buttonText: "Verify",
                    onTap: verifyOtp,
                    width: SizeConfig.getPartOfWidth(343).w,
                    height: SizeConfig.getPartOfHeight(57).h,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
