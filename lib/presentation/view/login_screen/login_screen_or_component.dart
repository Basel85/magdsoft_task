import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/shared/line_component.dart';
import 'package:sizer/sizer.dart';

class LoginScreenOrComponent extends StatelessWidget {
  const LoginScreenOrComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.getPartOfWidth(372).w,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,children: [
         LineComponent(width: SizeConfig.getPartOfWidth(165).w,height: SizeConfig.getPartOfHeight(1).h,color: AppColor.fourthBlueColor,),
        Expanded(child: Text(
              'OR',
              style: AppTextStyle.familyInterWeightw400Size15,
              textAlign: TextAlign.center,
            ),),
            LineComponent(width: SizeConfig.getPartOfWidth(165).w,height: SizeConfig.getPartOfHeight(1).h,color: AppColor.fourthBlueColor,),
      ]),
    );
  }
}
