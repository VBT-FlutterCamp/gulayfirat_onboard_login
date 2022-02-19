import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  TextStyleWidget({
    Key? key,
    String? text,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    int? maxLines,
  })  : text = text,
        fontSize = fontSize,
        color = color,
        fontWeight = fontWeight,
        maxLines = maxLines,
        super(key: key);
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "",
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
