import 'package:flutter/material.dart';

import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/companents/text/app_text.dart';
import '../../../../product/widgets/text_style_widget.dart';

class BuildTextWidgets extends StatefulWidget {
  const BuildTextWidgets({Key? key}) : super(key: key);

  @override
  _BuildTextWidgetsState createState() => _BuildTextWidgetsState();
}

class _BuildTextWidgetsState extends State<BuildTextWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextStyleWidget(
            text: AppStrings.welcomeBackText,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.lightextColor,
          ),
          SizedBox(
            height: SizeHelper.getHeightSize(context) * 0.01,
          ),
          TextStyleWidget(
            text: AppStrings.signInText,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: AppColors.lightextColor,
          ),
        ],
      ),
    );
  }
}
