import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/assets/app_assets.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/login_screen/login_screen_background_image.dart';
import 'package:magdsoft_task/presentation/view/login_screen/login_screen_background_image_color.dart';
import 'package:magdsoft_task/presentation/view/login_screen/login_screen_or_component.dart';
import 'package:magdsoft_task/presentation/view/shared/authentication_button.dart';
import 'package:sizer/sizer.dart';

import '../../responsiveness/size_config.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(height: 100.h,),
            const LoginScreenBackgroundImage(),
            const LoginScreenBackgroundImageColor(),
            Positioned(top: SizeConfig.getPartOfHeight(316).h,
            child: Container(
                width: SizeConfig.getPartOfWidth(430).w,
                height: SizeConfig.getPartOfHeight(617).h,
                decoration: const ShapeDecoration(
                    color: AppColor.white,
                    shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
              ),
                    ),
                ),
            )),
      Positioned(
        bottom: SizeConfig.getPartOfHeight(250).h,
        left: SizeConfig.getPartOfWidth(28).w,
        child: const LoginScreenOrComponent(),
      ),
      Positioned(
         bottom: SizeConfig.getPartOfHeight(120).h,
         left: SizeConfig.getPartOfWidth(109).w,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Container(margin: EdgeInsets.only(right: SizeConfig.getPartOfWidth(28).w),child: AuthenticationButton(iconLeftPosition: SizeConfig.getPartOfWidth(17).w,widget:SizedBox(width: SizeConfig.getPartOfWidth(19).w,height: SizeConfig.getPartOfHeight(52).h,child: Text("f",style: AppTextStyle.familyInterWeightW400Size50,),))),
          Container(margin: EdgeInsets.only(right: SizeConfig.getPartOfWidth(28).w),child: AuthenticationButton(iconLeftPosition: SizeConfig.getPartOfWidth(10).w,iconTopPoition: SizeConfig.getPartOfHeight(8).h,widget:Container(width: SizeConfig.getPartOfWidth(31).w,height: SizeConfig.getPartOfHeight(37).h,decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage(AppAssets.appleIcon),
fit: BoxFit.fill,
),
),))),
Container(margin: EdgeInsets.only(right: SizeConfig.getPartOfWidth(28).w),child: AuthenticationButton(iconLeftPosition: SizeConfig.getPartOfWidth(7).w,iconTopPoition: SizeConfig.getPartOfHeight(7).h,widget:Container(width: SizeConfig.getPartOfWidth(38).w,height: SizeConfig.getPartOfHeight(38).h,decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage(AppAssets.googleIcon),
fit: BoxFit.fill,
),
),))),
         ]),
      ),
      Positioned(left: SizeConfig.getPartOfWidth(29).w,top: SizeConfig.getPartOfHeight(193).h,child: Container(
    width: 372,
    height: 345,
    decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
        ),
        shadows: [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 20,
                offset: Offset(2, 5),
                spreadRadius: 5,
            )
        ],
    ),
),)
          ],
        ),
      ),
    );
  }
}
