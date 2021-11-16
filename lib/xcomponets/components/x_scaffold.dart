import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XScaffold
    extends DetectPlataform<Scaffold, CupertinoPageScaffold, Scaffold> {
  final Widget body;
  final dynamic appBar;
  final Color? backgroundColor;

  XScaffold({
    required this.body,
    this.appBar,
    this.backgroundColor,
  });

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar as AppBar,
      body: body,
      backgroundColor: backgroundColor,
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
      child: body,
      navigationBar: appBar as CupertinoNavigationBar,
      backgroundColor: backgroundColor,
    );
  }

  @override
  createWebWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar as AppBar,
      body: body,
      backgroundColor: backgroundColor,
    );
  }
}
