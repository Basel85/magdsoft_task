import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class OtpField extends StatelessWidget {
  final bool isLastDigit;
  final TextEditingController controller;
  const OtpField(
      {super.key, required this.controller, this.isLastDigit = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(70).w,
      height: SizeConfig.getPartOfHeight(80).h,
      decoration: ShapeDecoration(
        color: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: AppColor.firstBlackColor,
            blurRadius: 20,
            offset: Offset(2, 5),
            spreadRadius: 5,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        onChanged: (value) {
          if (isLastDigit) {
            if (value.length == 1) {
              FocusScope.of(context).unfocus();
            }
          } else {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
