import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(282).w,
      height: SizeConfig.getPartOfHeight(48.01).h,
      decoration: ShapeDecoration(
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: AppColor.firstBlackColor,
            blurRadius: 8,
            offset: Offset(2, 2),
            spreadRadius: 2,
          )
        ],
      ),
      child: Container(
        color: Colors.red,
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'The field is required';
            }
            return null;
          },
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.start,
            decoration: InputDecoration(
          hintText: hintText,
          errorStyle: AppTextStyle.colorRedfamilyInterWeightw400Size10,
          hintStyle: AppTextStyle.familyInterWeightw400Size10,
          hintTextDirection: TextDirection.ltr,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        )),
      ),
    );
  }
}
