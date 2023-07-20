import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  final double width;
  final double height;
  const CustomButton({super.key, required this.buttonText, this.onTap, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
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
