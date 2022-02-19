import 'package:flutter/material.dart';
import 'package:onboard/product/companents/navigation_services/navigation_services.dart';
import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/companents/text/app_text.dart';
import '../../../../product/widgets/elevated_button_widgets.dart';
import '../../../../product/widgets/text_style_widget.dart';

class BuildLoginWidget extends StatefulWidget {
  const BuildLoginWidget({Key? key}) : super(key: key);

  @override
  _BuildLoginWidgetState createState() => _BuildLoginWidgetState();
}

class _BuildLoginWidgetState extends State<BuildLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      onPressed: () => previousScreen(context),
      primaryColor: AppColors.loginButtonColor,
      height: SizeHelper.getHeightSize(context) * 0.065,
      width: SizeHelper.getWidthSize(context) * 0.85,
      radius: 20,
      child: TextStyleWidget(
        text: AppStrings.signInText,
        color: AppColors.lightColor,
        fontSize: 20,
      ),
    );
  }
}
