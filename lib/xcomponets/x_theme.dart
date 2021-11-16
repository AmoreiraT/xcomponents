import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xcomponents/xcomponets/detect_arq_theme.dart';

class XTheme extends DetectTheme {
  XTheme();

  @override
  CupertinoThemeData createIosTheme(BuildContext context) {
    return cupertinoTheme;
  }

  @override
  ThemeData createMaterialTheme(BuildContext context) {
    return materialTheme;
  }

  @override
  ThemeData createWebTheme(BuildContext context) {
    return materialTheme;
  }

  static ThemeData materialTheme = ThemeData(
    primaryColor: darkerText,
    buttonColor: notWhite,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(dark_grey),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(4.0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return grey;
          }
          return spacer;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(body2),
        side: MaterialStateProperty.all(
          BorderSide(
            width: 1.0,
            color: notWhite,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(darkerText),
      ),
    ),
    accentColor: dark_grey,
    bottomAppBarColor: notWhite,
    accentTextTheme: appTextTheme,
    iconTheme: IconThemeData(
      color: dark_grey,
    ),
    accentIconTheme: IconThemeData(
      color: dark_grey,
    ),
    primaryTextTheme: appTextTheme,
    accentColorBrightness: Brightness.light,
    appBarTheme: AppBarTheme(
      titleTextStyle: body2,
      foregroundColor: dark_grey,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: dark_grey,
      ),
      backgroundColor: notWhite,
      actionsIconTheme: IconThemeData(
        color: dark_grey,
      ),
    ),
    backgroundColor: notWhite,
    scaffoldBackgroundColor: notWhite,
    textTheme: appTextTheme,
  );

  static CupertinoThemeData cupertinoTheme = const CupertinoThemeData(
    barBackgroundColor: notWhite,
    brightness: Brightness.light,
    primaryColor: darkerText,
    primaryContrastingColor: dark_grey,
    scaffoldBackgroundColor: notWhite,
    textTheme: CupertinoTextThemeData(
      actionTextStyle: body2,
      navActionTextStyle: body2,
      dateTimePickerTextStyle: display1,
      navLargeTitleTextStyle: headline,
      navTitleTextStyle: headline,
      pickerTextStyle: body2,
      primaryColor: dark_grey,
      tabLabelTextStyle: headline,
      textStyle: body2,
    ),
  );

  // style Settings

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFFB5ECEC);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'WorkSans';

  static const TextTheme appTextTheme = TextTheme(
    caption: caption,
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
  );

  static const TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 48,
    letterSpacing: 1.2,
    height: 1.2,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 22,
    letterSpacing: 0.8,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
