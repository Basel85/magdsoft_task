import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/assets/app_assets.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:sizer/sizer.dart';

class SplashScreenSubtract extends StatelessWidget {
  const SplashScreenSubtract({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(244.01).w,
      height: SizeConfig.getPartOfHeight(167.50).h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.subtract),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
