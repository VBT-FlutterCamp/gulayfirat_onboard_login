import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void nextScreen(page, BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreeniOS(page, BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) => page));
}

void nextScreenCloseOthers(page, BuildContext context) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => page), (route) => false);
}

void previousScreen(BuildContext context) {
  Navigator.pop(context);
}
