import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const CustomButton({super.key, required this.buttonText, this.onTap});
  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: SizeConfig.getPartOfWidth(282).w,
          height: SizeConfig.getPartOfHeight(48.01).h,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              
              colors: [
                AppColor.secondBlueColor,
                AppColor.thirdBlueColor,
                AppColor.seventhBlueColor
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Center(
            child: Text(buttonText,
                textAlign: TextAlign.center,
                style: AppTextStyle.familyInterWeightw400Size20),
          )),
    );
  }
}
