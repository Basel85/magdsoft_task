import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
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
        const LineComponent(),
        Expanded(child: Text(
              'OR',
              style: AppTextStyle.familyInterWeightw400Size15,
              textAlign: TextAlign.center,
            ),),
            const LineComponent(),
      ]),
    );
  }
}
