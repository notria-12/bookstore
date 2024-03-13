import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../foundations/tokens/size_tokens.dart';
import '../../utils/constants/constants.dart';

class AppTypographyData extends Equatable {
  /// Creates a new instance of [AppTypographyData].
  const AppTypographyData({
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.subtitleMedium,
    required this.subtitleSmall,
    required this.labelMedium,
    required this.labelSmall,
  });

  /// Default typography scale scheme
  factory AppTypographyData.regular() => const AppTypographyData(
        titleLarge: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontXl,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontLarge,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w500,
          fontSize: SizeTokens.fontLarge,
        ),
        subtitleMedium: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontMedium,
        ),
        subtitleSmall: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontMedium,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontMedium,
          fontFeatures: [FontFeature.tabularFigures()],
        ),
        labelSmall: TextStyle(
          fontFamily: 'Eina',
          package: packageName,
          fontWeight: FontWeight.w400,
          fontSize: SizeTokens.fontSmall,
          fontFeatures: [FontFeature.tabularFigures()],
        ),
      );

  /// Typography scale for large titles.
  final TextStyle titleLarge;

  /// Typography scale for medium titles.
  final TextStyle titleMedium;

  /// Typography scale for small titles.
  final TextStyle titleSmall;

  /// Typography scale for medium subtitles.
  final TextStyle subtitleMedium;

  /// Typography scale for small subtitles.
  final TextStyle subtitleSmall;

  /// Typography scale for medium labels.
  final TextStyle labelMedium;

  /// Typography scale for small labels.
  final TextStyle labelSmall;

  @override
  List<Object> get props => [
        titleLarge,
        titleMedium,
        titleSmall,
        subtitleMedium,
        subtitleSmall,
        labelMedium,
        labelSmall,
      ];
} 