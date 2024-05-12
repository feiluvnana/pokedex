import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_/core/constant.dart';

final tLightTheme = FlexThemeData.light(
        scheme: FlexScheme.blueM3,
        textTheme: GoogleFonts.varelaRoundTextTheme().copyWith(
          titleSmall: GoogleFonts.varelaRoundTextTheme()
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.varelaRoundTextTheme()
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          titleLarge: GoogleFonts.varelaRoundTextTheme()
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          labelSmall: GoogleFonts.varelaRoundTextTheme()
              .labelSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          labelMedium: GoogleFonts.varelaRoundTextTheme()
              .labelMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          labelLarge: GoogleFonts.varelaRoundTextTheme()
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        primaryTextTheme: GoogleFonts.varelaRoundTextTheme().copyWith(
          titleSmall: GoogleFonts.varelaRoundTextTheme()
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.varelaRoundTextTheme()
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          titleLarge: GoogleFonts.varelaRoundTextTheme()
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          labelSmall: GoogleFonts.varelaRoundTextTheme()
              .labelSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          labelMedium: GoogleFonts.varelaRoundTextTheme()
              .labelMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          labelLarge: GoogleFonts.varelaRoundTextTheme()
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        subThemesData: const FlexSubThemesData(),
        useMaterial3: true)
    .copyWith(
        appBarTheme: const AppBarTheme(
            actionsIconTheme: IconThemeData(size: tIconSize),
            iconTheme: IconThemeData(size: tIconSize)),
        iconTheme: const IconThemeData(size: tIconSize),
        iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
                padding: const EdgeInsets.all(tIconButtonPadding))));
