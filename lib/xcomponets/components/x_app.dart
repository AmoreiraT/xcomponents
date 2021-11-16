import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XApp extends DetectPlataform<MaterialApp, CupertinoApp, MaterialApp> {
  final String title;
  final dynamic theme;
  final Widget home;
  final dynamic routes;

  XApp({
    required this.title,
    this.theme,
    required this.home,
    this.routes,
  });

  @override
  MaterialApp createAndroidWidget(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme,
      home: home,
      routes: routes,
    );
  }

  @override
  CupertinoApp createIosWidget(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme,
      home: home,
      routes: routes,
    );
  }

  @override
  createWebWidget(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme,
      home: home,
      routes: routes,
    );
  }
}
