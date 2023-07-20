import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_cubit.dart';
import 'package:magdsoft_task/business_logic/authentication_cubit/authentication_states.dart';
import 'package:magdsoft_task/presentation/responsiveness/size_config.dart';
import 'package:magdsoft_task/presentation/styles/colors.dart';
import 'package:magdsoft_task/presentation/styles/text_styles.dart';
import 'package:magdsoft_task/presentation/view/shared/custom_button.dart';
import 'package:magdsoft_task/presentation/view/shared/custom_text_field.dart';
import 'package:magdsoft_task/presentation/view/shared/line_component.dart';
import 'package:magdsoft_task/presentation/widget/dialogue.dart';
import 'package:magdsoft_task/utils/keys/form_key.dart';
import 'package:sizer/sizer.dart';

class LoginScreenCard extends StatefulWidget {
  const LoginScreenCard({super.key});

  @override
  State<LoginScreenCard> createState() => _LoginScreenCardState();
}

class _LoginScreenCardState extends State<LoginScreenCard> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  void login() async {
    FocusScope.of(context).unfocus();
    if (FormKey.formKey.currentState!.validate()) {
        try {
      await AuthenticationCubit.get(context).loginUserByPhoneNumber(
          _fullNameController.text, _phoneNumberController.text);
    } catch (_) {
      AuthenticationCubit.get(context).alertThatUnknownErrorHappened();
    }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationLoading) {
          showProgressDialog(context);
        } else if (state is AuthenticationSuccess) {
          Navigator.pop(context);
          Fluttertoast.showToast(msg: "${state.successMessage} and your otp code is ${state.code}",toastLength: Toast.LENGTH_LONG);
          Navigator.pushNamedAndRemoveUntil(context, '/verify', (route) => false,arguments: {'fullname':_fullNameController.text,'phonenumber':_phoneNumberController.text});
        } else if (state is AuthenticationFailure) {
          Navigator.pop(context);
          Fluttertoast.showToast(msg: state.errorMessage,toastLength: Toast.LENGTH_LONG);
        }
      },
      listenWhen: (previous, current) =>
          current is AuthenticationLoading ||
          current is AuthenticationSuccess ||
          current is AuthenticationFailure,
      child: Container(
        width: SizeConfig.getPartOfWidth(372).w,
        height: SizeConfig.getPartOfHeight(345).h,
        decoration: ShapeDecoration(
          color: AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
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
        child: Form(
          key: FormKey.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.getPartOfHeight(27.88).h),
                child: Text(
                  'Welcome',
                  style: AppTextStyle.familyInterWeightw400Size30,
                ),
              ),
              SizedBox(
                height: SizeConfig.getPartOfHeight(15.66).h,
              ),
              LineComponent(
                width: SizeConfig.getPartOfWidth(143).w,
                height: SizeConfig.getPartOfHeight(3.13).h,
                color: AppColor.sixthBlueColor,
              ),
              SizedBox(
                height: SizeConfig.getPartOfHeight(42.79).h,
              ),
              CustomTextField(
                hintText: "Enter your Full Name",
                controller: _fullNameController,
              ),
              SizedBox(
                height: SizeConfig.getPartOfHeight(16.95).h,
              ),
              CustomTextField(
                hintText: "Enter your Phone Number",
                controller: _phoneNumberController,
              ),
              SizedBox(
                height: SizeConfig.getPartOfHeight(31.99).h,
              ),
              CustomButton(
                buttonText: "Login",
                onTap: login,
                width: SizeConfig.getPartOfWidth(282).w,
                height: SizeConfig.getPartOfHeight(48.01).h,
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  dispose() {
      _fullNameController.dispose();
      _phoneNumberController.dispose();
      super.dispose();
  }
}
