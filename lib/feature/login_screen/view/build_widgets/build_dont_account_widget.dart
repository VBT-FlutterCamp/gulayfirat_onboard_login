import 'package:flutter/material.dart';

import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/companents/text/app_text.dart';
import '../../../../product/widgets/text_style_widget.dart';

class DontAccountTextWidget extends StatefulWidget {
  const DontAccountTextWidget({Key? key}) : super(key: key);

  @override
  _DontAccountTextWidgetState createState() => _DontAccountTextWidgetState();
}

class _DontAccountTextWidgetState extends State<DontAccountTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextStyleWidget(
          text: AppStrings.dontAccount,
          color: AppColors.darktextColor,
          fontSize: 14,
        ),
        SizedBox(width: SizeHelper.getWidthSize(context) * 0.01),
        InkWell(
          child: TextStyleWidget(
            text: AppStrings.signUpText,
            color: AppColors.darktextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
