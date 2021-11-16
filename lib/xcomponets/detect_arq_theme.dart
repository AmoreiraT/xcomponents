import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class DetectTheme<A extends ThemeData, I extends CupertinoThemeData,
    W extends ThemeData?> {
  build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return createMaterialTheme(context);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return createIosTheme(context);
    } else {
      return createWebTheme(context);
    }
  }

  I createIosTheme(BuildContext context);
  A createMaterialTheme(BuildContext context);
  W createWebTheme(BuildContext context);
}
