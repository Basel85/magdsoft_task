import 'package:flutter/cupertino.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class LoginScreenBackgroundImageColor extends StatelessWidget {
  const LoginScreenBackgroundImageColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(430).w,
      height: SizeConfig.getPartOfHeight(386).h,
      decoration: const BoxDecoration(color: AppColor.thirdBlueColor),
    );
  }
}
