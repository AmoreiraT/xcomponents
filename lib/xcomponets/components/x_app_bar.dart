import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XAppBar extends DetectPlataform<AppBar, CupertinoNavigationBar, AppBar> {
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final dynamic backgroundColor;

  XAppBar({
    required this.title,
    this.leading,
    this.trailing,
    this.backgroundColor,
  });

  @override
  AppBar createAndroidWidget(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: leading,
      ),
      actions: trailing is Widget
          ? <Widget>[
              trailing as Widget,
            ]
          : [],
    );
  }

  @override
  CupertinoNavigationBar createIosWidget(BuildContext context) {
    return CupertinoNavigationBar(
      middle: title,
      leading: leading,
      trailing: trailing,
      automaticallyImplyMiddle: true,
      backgroundColor: backgroundColor,
    );
  }

  @override
  createWebWidget(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: title,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: leading,
      ),
      actions: trailing is Widget
          ? <Widget>[
              trailing as Widget,
            ]
          : [],
    );
  }
}
