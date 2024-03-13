import 'package:design_system/src/foundations/foundations.dart';
import 'package:design_system/src/theme/data/typography.dart';
import 'package:design_system/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ThemeFactory {
  final ThemeData theme;

  ThemeFactory({
    required this.theme,
  });

  factory ThemeFactory.dark(ColorScheme colorScheme) {
    final themeData = ThemeData(
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: colorScheme,
    );
    return ThemeFactory(theme: themeData);
  }

  factory ThemeFactory.light(ColorScheme colorScheme) {
    final themeData = ThemeData(
      primaryColor: ColorTokens.primary,
      fontFamily: 'Inter',
      // NOTE cor brackground
      scaffoldBackgroundColor: ColorTokens.bgWhite,
      // NOTE color BottomNavigation
      canvasColor: Colors.white,
      //brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,

      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      textTheme: const TextTheme( titleLarge: TextStyle(
          fontFamily: 'Roboto',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontXl,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Roboto',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontLarge,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Roboto',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontLarge,
        ),  
        labelMedium: TextStyle(
          fontFamily: 'Roboto',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontMedium,
          fontFeatures: [FontFeature.tabularFigures()],
        ),
        labelSmall: TextStyle(
          fontFamily: 'Roboto',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontSmall,
          fontFeatures: [FontFeature.tabularFigures()],
        ),),
      // colorScheme: colorScheme,
    );
    return ThemeFactory(
      theme: themeData,
    );
  }
}
