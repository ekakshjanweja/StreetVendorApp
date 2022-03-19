import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

class TextStyleClass {
  //Logo Style

  static TextStyle logoStyle(BuildContext context, Color textColor) {
    return GoogleFonts.nunitoSans(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w900,
      color: CustomColors.primaryColor(),
      letterSpacing: 3,
      fontSize: MediaQuery.of(context).size.height * 0.055,
    );
  }
  //h1

  static TextStyle h1Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.04,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  //h2

  static TextStyle h2Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.03,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  //h3

  static TextStyle h3Bold(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.025,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
  }

  //bodyText

  static TextStyle bodyText(BuildContext context, Color textColor) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.height * 0.018,
      fontWeight: FontWeight.normal,
      color: textColor,
    );
  }
}
