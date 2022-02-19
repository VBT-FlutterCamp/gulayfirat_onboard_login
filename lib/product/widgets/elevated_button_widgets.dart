import 'package:flutter/material.dart';
import 'package:onboard/product/companents/colors/app_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {required void Function()? onPressed,
      Widget? child,
      double? height,
      double? width,
      double? fontSize,
      double? radius,
      Color? primaryColor,
      Color? onPrimaryColor,
      Color? borderColor,
      Key? key})
      : onPressed = onPressed,
        child = child,
        height = height,
        width = width,
        fontSize = fontSize,
        radius = radius,
        primaryColor = primaryColor,
        onPrimaryColor = onPrimaryColor,
        borderColor = borderColor,
        super(key: key);
  final void Function()? onPressed;
  final Widget? child;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? radius;
  final Color? primaryColor;
  final Color? onPrimaryColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            onPrimary: onPrimaryColor,
            primary: primaryColor,
            side: BorderSide(color: borderColor ?? AppColors.lightColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 0))),
        child: child,
      ),
    );
  }
}
