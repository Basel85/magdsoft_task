import 'package:flutter/cupertino.dart';
import 'package:magdsoft_task/presentation/assets/app_assets.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:sizer/sizer.dart';

class LoginScreenBackgroundImage extends StatelessWidget {
  const LoginScreenBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getPartOfWidth(430).w,
      height: SizeConfig.getPartOfHeight(369).h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.loginScreenBackgroundImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
