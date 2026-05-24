import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class PaymentMethodWidget
    extends StatelessWidget {

  final String title;

  final bool selected;

  final VoidCallback onTap;

  const PaymentMethodWidget({

    super.key,

    required this.title,

    required this.selected,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onTap,

      child: Container(

        margin: EdgeInsets.only(bottom: 15.h),

        padding: EdgeInsets.all(15.r),

        decoration: BoxDecoration(

          color: selected
              ? AppColors.primaryPink
              : AppColors.white,

          borderRadius:
          BorderRadius.circular(15.r),

          border: Border.all(
            color: AppColors.primaryPink,
          ),
        ),

        child: Row(

          children: [

            Icon(

              Icons.payment,

              color: selected
                  ? AppColors.white
                  : AppColors.primaryPink,
            ),

            SizedBox(width: 10.w),

            Text(

              title,

              style: TextStyle(

                color: selected
                    ? AppColors.white
                    : AppColors.primaryPink,

                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}