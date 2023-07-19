import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreenElipse5 extends StatelessWidget {
  const SplashScreenElipse5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(246).w,
      height: SizeConfig.getPartOfHeight(271).h,
      decoration: const ShapeDecoration(
        color: AppColor.splashScreenBackgroundColor,
        shape: OvalBorder(),
      ),
    );
  }
}
