import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class AuthHeader extends StatelessWidget {

  final String title;

  final String subTitle;

  const AuthHeader({

    super.key,

    required this.title,

    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment:
      CrossAxisAlignment.start,

      children: [

        SizedBox(height: 40.h),

        Text(

          title,

          style: TextStyle(

            fontSize: 32.sp,

            fontWeight: FontWeight.bold,

            color: AppColors.black,

            height: 1.2,
          ),
        ),

        SizedBox(height: 10.h),

        Text(

          subTitle,

          style: TextStyle(

            fontSize: 15.sp,

            color: AppColors.lightGrey,
          ),
        ),
      ],
    );
  }
}