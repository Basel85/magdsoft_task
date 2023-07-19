import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/assets/app_assets.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:sizer/sizer.dart';


class SplashScreenBird extends StatelessWidget {
  const SplashScreenBird({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(269).w,
      height: SizeConfig.getPartOfHeight(208).h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.bird),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
