import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/shared/custom_button.dart';
import 'package:magdsoft_task/presentation/view/verify_screen/otp_field.dart';
import 'package:sizer/sizer.dart';

class VerifyScreen extends StatefulWidget {
  final String fullname;
  final String phonenumber;
  const VerifyScreen(
      {super.key, required this.fullname, required this.phonenumber});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _firstDigitController = TextEditingController();
  final TextEditingController _secondDigitController = TextEditingController();
  final TextEditingController _thirdDigitController = TextEditingController();
  final TextEditingController _fourthDigitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              
                  children: [
            Container(
              width: SizeConfig.getPartOfWidth(430).w,
              height: SizeConfig.getPartOfHeight(420).h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [AppColor.eigthBlueColor, AppColor.thirdBlackColor],
                ),
              ),
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
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Resend Code",
                textAlign: TextAlign.center,
                style: AppTextStyle.colorSecondBlueFamilyInterWeightw400Size20,
              ),
            ),
            SizedBox(
              height: SizeConfig.getPartOfHeight(78).h,
            ),
            CustomButton(
              buttonText: "Verify",
              onTap: () {},
              width: SizeConfig.getPartOfWidth(343).w,
              height: SizeConfig.getPartOfHeight(57).h,
            )
                  ],
                ),
          )),
    );
  }
}
