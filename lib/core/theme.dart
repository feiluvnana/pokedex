import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:test_/core/constant.dart';

final tLightTheme = FlexThemeData.light(
        scheme: FlexScheme.blueM3,
        textTheme: Typography.blackRedmond.copyWith(
          titleSmall: Typography.blackRedmond.titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          titleMedium: Typography.blackRedmond.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          titleLarge: Typography.blackRedmond.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          labelSmall: Typography.blackRedmond.labelSmall
              ?.copyWith(fontWeight: FontWeight.bold),
          labelMedium: Typography.blackRedmond.labelMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          labelLarge: Typography.blackRedmond.labelLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        primaryTextTheme: Typography.blackRedmond.copyWith(
            titleSmall: Typography.blackRedmond.titleSmall
                ?.copyWith(fontWeight: FontWeight.bold),
            titleMedium: Typography.blackRedmond.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            titleLarge: Typography.blackRedmond.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            labelSmall: Typography.blackRedmond.labelSmall
                ?.copyWith(fontWeight: FontWeight.bold),
            labelMedium: Typography.blackRedmond.labelMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            labelLarge: Typography.blackRedmond.labelLarge
                ?.copyWith(fontWeight: FontWeight.bold)),
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
