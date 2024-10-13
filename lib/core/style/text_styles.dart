import 'package:flutter/material.dart';
import 'package:hackathon_bemobi/core/style/colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get smallPlusBlack => TextStyle(
      color: AppColors.gray850,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none);

  TextStyle get smallGray => TextStyle(
      color: AppColors.gray800,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none);

  TextStyle get smallBlue => TextStyle(
      color: AppColors.primary900,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none);

  TextStyle get smallWhite => TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
