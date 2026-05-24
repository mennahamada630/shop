import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_font_weight.dart';

abstract class AppStyles {
  static var haveAnAccount = TextStyle(
      fontWeight: AppFontWeight.regular,
      fontSize: 14.sp,
      color: AppColors.black);

  static TextStyle black18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle black24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle grey14 = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGrey,
  );

  static TextStyle white18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle primary16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryPink,
  );
}