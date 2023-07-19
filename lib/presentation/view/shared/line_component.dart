import 'package:flutter/cupertino.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

class LineComponent extends StatelessWidget {
  const LineComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(165).w,
      height: SizeConfig.getPartOfHeight(1).h,
      decoration: ShapeDecoration(
        color: AppColor.orComponentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
