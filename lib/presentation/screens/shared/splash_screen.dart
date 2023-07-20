import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/view/splash_screen/splash_screen_bird.dart';
import 'package:magdsoft_task/presentation/view/splash_screen/splash_screen_elipse5.dart';
import 'package:magdsoft_task/presentation/view/splash_screen/splash_screen_elipse6.dart';
import 'package:magdsoft_task/presentation/view/splash_screen/splash_screen_rectangle.dart';
import 'package:magdsoft_task/presentation/view/splash_screen/splash_screen_subtract.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/login', (route) => false);
    });
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: AppColor.secondBlueColor),
        child: Stack(
          children: [
            Positioned(
              bottom: SizeConfig.getPartOfHeight(534.29).h,
              right: SizeConfig.getPartOfWidth(215.12).w,
              child: const SplashScreenRectangle(),
            ),
            Positioned(
              bottom: SizeConfig.getPartOfHeight(60.29).h,
              right: -1*SizeConfig.getPartOfWidth(127.88).w,
              child: const SplashScreenRectangle(),
            ),
            Positioned(
              bottom: SizeConfig.getPartOfHeight(197.5).h,
              right: SizeConfig.getPartOfWidth(320.99).w,
              child: const SplashScreenSubtract(),
            ),
            Positioned(
              top: SizeConfig.getPartOfHeight(211).h,
              left: SizeConfig.getPartOfWidth(268).w,
              child: const SplashScreenElipse5(),
            ),
            Positioned(
              top: SizeConfig.getPartOfHeight(177).h,
              left: SizeConfig.getPartOfWidth(282).w,
              child: const SplashScreenElipse6(),
            ),
            Positioned(
              top: SizeConfig.getPartOfHeight(362).h,
              left: SizeConfig.getPartOfWidth(80).w,
              child: const SplashScreenBird(),
            ),
          ],
        ),
      ),
    );
  }
}
