import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/assets/app_assets.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:sizer/sizer.dart';

class SplashScreenElipse6 extends StatelessWidget {
  const SplashScreenElipse6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(246).w,
      height: SizeConfig.getPartOfHeight(246).h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.ellipse6),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
