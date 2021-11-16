import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class PlatformSwitch extends DetectPlataform<Switch, CupertinoSwitch, Switch> {
  final onChanged;
  final value;

  PlatformSwitch({
    this.onChanged,
    this.value,
  });

  @override
  Switch createAndroidWidget(BuildContext context) {
    return Switch(
      onChanged: onChanged,
      value: value,
    );
  }

  @override
  CupertinoSwitch createIosWidget(BuildContext context) {
    return CupertinoSwitch(
      onChanged: onChanged,
      value: value,
    );
  }

  @override
  Switch createWebWidget(BuildContext context) {
    return Switch(
      onChanged: onChanged,
      value: value,
    );
  }
}
