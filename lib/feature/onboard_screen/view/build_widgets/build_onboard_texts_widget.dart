import 'package:flutter/material.dart';

import '../../../../product/companents/colors/app_colors.dart';
import '../../../../product/companents/size/app_size.dart';
import '../../../../product/widgets/text_style_widget.dart';
import '../../model/onboard_model.dart';

class BuildOnBoardTexts extends StatefulWidget {
  final int index;
  const BuildOnBoardTexts({Key? key, required this.index}) : super(key: key);

  @override
  _BuildOnBoardTextsState createState() => _BuildOnBoardTextsState();
}

class _BuildOnBoardTextsState extends State<BuildOnBoardTexts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeHelper.getHeightSize(context) * 0.06),
        TextStyleWidget(
          text: models[widget.index].title,
          color: AppColors.lightextColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: SizeHelper.getHeightSize(context) * 0.03),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Text(
            models[widget.index].description,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.lightextColor, fontSize: 17),
          ),
        ),
        SizedBox(height: SizeHelper.getHeightSize(context) * 0.15),
      ],
    );
  }
}
