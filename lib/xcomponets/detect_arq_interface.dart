import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

import 'package:universal_platform/universal_platform.dart';

// ignore: use_key_in_widget_constructors
abstract class DetectPlataform<A extends Widget, I extends Widget,
    W extends Widget> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return createAndroidWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return createIosWidget(context);
    } else {
      return createWebWidget(context);
    }
  }

  I createIosWidget(BuildContext context);
  A createAndroidWidget(BuildContext context);
  W createWebWidget(BuildContext context);
}
