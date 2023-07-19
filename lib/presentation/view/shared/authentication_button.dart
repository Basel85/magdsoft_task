import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class AuthenticationButton extends StatelessWidget {
  final Widget widget;
  final double iconLeftPosition;
  final double iconTopPoition;
  const AuthenticationButton({super.key, required this.widget,  this.iconLeftPosition=0,  this.iconTopPoition=0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: SizeConfig.getPartOfWidth(52).w,
          height: SizeConfig.getPartOfHeight(52).h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            shadows: [
              BoxShadow(
                color: AppColor.authenticationButtonShadowColor,
                blurRadius: 20,
                offset: Offset(SizeConfig.getPartOfWidth(2).w,
                    SizeConfig.getPartOfHeight(5).h),
                spreadRadius: 5,
              )
            ],
          ),
        ),
        Positioned(left: iconLeftPosition,top: iconTopPoition,child: widget),
      ],
    );
  }
}
