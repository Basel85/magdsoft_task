import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreenRectangle extends StatelessWidget {
  const SplashScreenRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationZ(0.88),
      child: Container(
        width: SizeConfig.getPartOfWidth(95).w,
        height: SizeConfig.getPartOfHeight(389).h,
        decoration: ShapeDecoration(
          color: AppColor.splashScreenRectangleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
