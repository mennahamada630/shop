import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class DefaultButton extends StatelessWidget {

  final String text;

  final VoidCallback onPressed;

  final Color? background;

  final Color? textColor;

  const DefaultButton({super.key, required this.text,
                      required this.onPressed, this.background, this.textColor});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
          background ??
              AppColors.primaryPink,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(15.r),
          ),
        ),
        onPressed: onPressed,

        child: Text(
          text,
          style: TextStyle(
            color:
            textColor ??
                AppColors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}