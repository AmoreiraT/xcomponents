import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcomponents/xcomponets/detect_arq_interface.dart';

class XButton
    extends DetectPlataform<ElevatedButton, CupertinoButton, ElevatedButton> {
  final VoidCallback onPressed;
  final Widget child;

  XButton({required this.child, required this.onPressed});

  @override
  ElevatedButton createAndroidWidget(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
    );
  }

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      minSize: 15,
      child: child,
      onPressed: onPressed,
      color: Colors.black12,
      borderRadius: const BorderRadius.all(
        Radius.circular(35),
      ),
    );
  }

  @override
  ElevatedButton createWebWidget(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
    );
  }
}

class XButtonFlat
    extends DetectPlataform<TextButton, CupertinoButton, TextButton> {
  final VoidCallback onPressed;
  final Widget child;

  XButtonFlat({
    required this.child,
    required this.onPressed,
  });

  @override
  TextButton createAndroidWidget(BuildContext context) {
    return TextButton(
      child: child,
      onPressed: onPressed,
    );
  }

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      minSize: 15,
      child: child,
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(
        Radius.circular(35),
      ),
    );
  }

  @override
  TextButton createWebWidget(BuildContext context) {
    return TextButton(
      child: child,
      onPressed: onPressed,
    );
  }
}
