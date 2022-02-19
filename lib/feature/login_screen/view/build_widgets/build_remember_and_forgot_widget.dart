import 'package:flutter/material.dart';

import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/companents/text/app_text.dart';
import '../../../../product/widgets/text_style_widget.dart';

class BuildRememberAndForgotWidget extends StatefulWidget {
  const BuildRememberAndForgotWidget({Key? key}) : super(key: key);

  @override
  _BuildRememberAndForgotWidgetState createState() =>
      _BuildRememberAndForgotWidgetState();
}

class _BuildRememberAndForgotWidgetState
    extends State<BuildRememberAndForgotWidget> {
  bool isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isCheckBox,
            activeColor: AppColors.primaryColor,
            onChanged: (bool? value) {
              setState(() {
                isCheckBox = value ?? false;
              });
            }),
        TextStyleWidget(text: AppStrings.rememberMe),
        SizedBox(width: SizeHelper.getWidthSize(context) * 0.2),
        TextStyleWidget(text: AppStrings.forgotPassword),
      ],
    );
  }
}
