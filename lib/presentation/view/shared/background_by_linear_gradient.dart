import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class BackgroundByLinearGradient extends StatelessWidget {
  const BackgroundByLinearGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: SizeConfig.getPartOfHeight(420).h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin:  Alignment(0.00, -1.00),
          end:  Alignment(0, 1),
          colors: [AppColor.eigthBlueColor, AppColor.thirdBlackColor],
        ),
      ),
    );
  }
}
