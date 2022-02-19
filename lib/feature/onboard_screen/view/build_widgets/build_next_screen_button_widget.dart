import 'package:flutter/material.dart';

import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/navigation_services/navigation_services.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/companents/text/app_text.dart';
import '../../../../product/widgets/elevated_button_widgets.dart';
import '../../../../product/widgets/text_style_widget.dart';
import '../../../login_screen/view/login_screen.dart';

class BuildNextScreenButtonWidget extends StatefulWidget {
  const BuildNextScreenButtonWidget({Key? key}) : super(key: key);

  @override
  _BuildNextScreenButtonWidgetState createState() =>
      _BuildNextScreenButtonWidgetState();
}

class _BuildNextScreenButtonWidgetState
    extends State<BuildNextScreenButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      height: SizeHelper.getHeightSize(context) * 0.06,
      width: SizeHelper.getWidthSize(context) * 0.4,
      onPressed: () => nextScreen(LoginScreen(), context),
      primaryColor: AppColors.primaryColor,
      borderColor: AppColors.lightColor,
      child: TextStyleWidget(
        text: AppStrings.skipButtonText,
        fontSize: 16,
        color: AppColors.lightextColor,
      ),
    );
  }
}
