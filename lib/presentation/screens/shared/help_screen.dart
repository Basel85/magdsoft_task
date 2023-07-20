import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/shared/background_by_linear_gradient.dart';
import 'package:magdsoft_task/presentation/view/shared/custom_button.dart';
import 'package:sizer/sizer.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(width: 100.w,height: 100.h,),
            const BackgroundByLinearGradient(),
            Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
               SizedBox(height: SizeConfig.getPartOfHeight(50).h,),
               Text('Help',style: AppTextStyle.colorWhiteFamilyInterWeightw400Size30,),
               SizedBox(height: SizeConfig.getPartOfHeight(65).h,),
               Expanded(child: Container()),
               Container(margin: EdgeInsets.only(bottom: SizeConfig.getPartOfHeight(24.99).h),child: CustomButton(buttonText: "Continue", width: SizeConfig.getPartOfWidth(282).w, height: SizeConfig.getPartOfHeight(48.01).h))
            ],
            ),
          ],
        ),
      ),
    );
  }
}