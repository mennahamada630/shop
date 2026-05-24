import 'dart:ui';


import 'package:flutter/cupertino.dart' ;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/utils/app_assets.dart';
import 'package:shop/core/widgets/svg_wrapper.dart';

import '../../../core/utils/app_colors.dart';
import '../data/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {

  final OnboardingModel model;

  const OnboardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(height: 90.h),
          SvgWrappers(
            svgPath: model.image,
            height: 300.h,
          ),
          // Image.asset(
          //   model.image,
          //   height: 300.h,
          // ),

          SizedBox(height: 40.h),

          Text(
            model.title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),

          SizedBox(height: 20.h),

          Text(
            model.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.lightGrey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}