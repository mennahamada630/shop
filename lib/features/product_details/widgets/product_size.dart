import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class ProductSizeWidget extends StatelessWidget {

  final String text;

  final bool selected;

  final VoidCallback onTap;

  const ProductSizeWidget({

    super.key,

    required this.text,

    required this.selected,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onTap,

      child: Container(

        margin: EdgeInsets.only(right: 10.w),

        width: 45.w,
        height: 45.h,

        decoration: BoxDecoration(

          color: selected
              ? AppColors.primaryPink
              : AppColors.white,

          borderRadius:
          BorderRadius.circular(12.r),

          border: Border.all(
            color: AppColors.primaryPink,
          ),
        ),

        child: Center(

          child: Text(

            text,

            style: TextStyle(

              color: selected
                  ? AppColors.white
                  : AppColors.primaryPink,

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}