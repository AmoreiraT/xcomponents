import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XAlertDialog
    extends DetectPlataform<AlertDialog, CupertinoAlertDialog, AlertDialog> {
  XAlertDialog({
    required this.title,
    required this.content,
    required this.actions,
  });

  final String title;
  final Widget content;
  final List<Widget> actions;

  // Widget Function(BuildContext) builder;

  @override
  AlertDialog createAndroidWidget(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: actions,
    );
  }

  @override
  CupertinoAlertDialog createIosWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: content,
      actions: actions,
    );
  }

  @override
  AlertDialog createWebWidget(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      actions: actions,
    );
  }
}
