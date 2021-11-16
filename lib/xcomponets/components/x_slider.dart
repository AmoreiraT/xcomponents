import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XSlider extends DetectPlataform<Slider, CupertinoSlider, Slider> {
  XSlider({
    required this.value,
    this.onChanged,
    required this.min,
    required this.max,
    required this.divisions,
  });
  final double min;
  final double max;
  final int divisions;
  final double value;
  final Function(double)? onChanged;

  @override
  Slider createAndroidWidget(BuildContext context) {
    return Slider(
      min: min,
      max: max,
      divisions: divisions,
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  CupertinoSlider createIosWidget(BuildContext context) {
    return CupertinoSlider(
      min: min,
      max: max,
      divisions: divisions,
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Slider createWebWidget(BuildContext context) {
    return Slider(
      min: min,
      max: max,
      divisions: divisions,
      value: value,
      onChanged: onChanged,
    );
  }
}
