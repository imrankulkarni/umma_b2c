import 'package:flutter/material.dart';

class AppFonts {
  // Default font family for the app
  static const String defaultFontFamily = 'Roboto';

  // Heading TextStyle
  static TextStyle headingTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Subheading TextStyle
  static TextStyle subheadingTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black54,
  );

  // Body TextStyle
  static TextStyle bodyTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  // Button TextStyle
  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  // AppBar TextStyle
  static TextStyle appBarTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // Footer TextStyle
  static TextStyle footerTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
}
