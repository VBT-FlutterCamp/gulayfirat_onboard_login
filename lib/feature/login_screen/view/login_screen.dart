import 'package:flutter/material.dart';
import 'package:onboard/feature/login_screen/view/build_widgets/build_login_button_widget.dart';
import 'package:onboard/feature/login_screen/view/build_widgets/build_remember_and_forgot_widget.dart';
import 'package:onboard/feature/login_screen/view/build_widgets/build_text_form_field_widgets.dart';
import 'package:onboard/feature/login_screen/view/build_widgets/build_text_widgets.dart';
import 'package:onboard/product/companents/colors/app_colors.dart';
import 'package:onboard/product/companents/size/app_size.dart';
import 'build_widgets/build_dont_account_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BuildTextWidgets(),
                SizedBox(height: SizeHelper.getHeightSize(context) * 0.04),
                Container(
                  height: SizeHelper.getHeightSize(context) * 0.55,
                  width: SizeHelper.getWidthSize(context) * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.lightColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildTextFormFieldWidgets(),
                      const BuildRememberAndForgotWidget(),
                      SizedBox(
                          height: SizeHelper.getHeightSize(context) * 0.03),
                      const BuildLoginWidget(),
                      SizedBox(
                          height: SizeHelper.getHeightSize(context) * 0.03),
                      const DontAccountTextWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
