import 'package:flutter/material.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:sizer/sizer.dart';

showProgressDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents the user from closing the dialog by tapping outside
    builder: (context) {
      return Dialog(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: SizeConfig.getPartOfWidth(20).w, vertical: SizeConfig.getPartOfHeight(20).h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              SizedBox(width: SizeConfig.getPartOfWidth(20).w),
              const Text("Loading..."),
            ],
          ),
        ),
      );
    },
  );
}
