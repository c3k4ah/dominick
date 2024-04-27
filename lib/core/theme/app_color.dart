import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color? primaryColor;
  final Color? tertioColor;
  final Color? secondaryColor;
  final Color? whiteColor;

  const AppColors({
    this.primaryColor,
    this.tertioColor,
    this.secondaryColor,
    this.whiteColor,
  });
  @override
  AppColors copyWith({
    Color? primaryColor,
    Color? tertioColor,
    Color? secondaryColor,
    Color? whiteColor,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      tertioColor: tertioColor ?? this.tertioColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      whiteColor: whiteColor ?? this.whiteColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      tertioColor: Color.lerp(tertioColor, other.tertioColor, t),
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t),
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t),
    );
  }
}
