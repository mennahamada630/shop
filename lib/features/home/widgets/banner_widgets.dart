import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      height: 180.h,

      padding: EdgeInsets.all(20.r),

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(20.r),

        gradient: const LinearGradient(

          colors: [
            Color(0xffF83758),
            Color(0xffFC6F8B),
          ],
        ),
      ),

      child: Row(

        children: [

          Expanded(

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              mainAxisAlignment:
              MainAxisAlignment.center,

              children: [

                Text(

                  "50-40% OFF",

                  style: TextStyle(

                    fontSize: 28.sp,

                    fontWeight: FontWeight.bold,

                    color: AppColors.white,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(

                  "Now in product\nAll colours",

                  style: TextStyle(

                    fontSize: 15.sp,

                    color: AppColors.white,
                  ),
                ),

                SizedBox(height: 15.h),

                Container(

                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),

                  decoration: BoxDecoration(

                    border: Border.all(
                      color: AppColors.white,
                    ),

                    borderRadius:
                    BorderRadius.circular(10.r),
                  ),

                  child: Text(

                    "Shop Now",

                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(

            child: Container(

              decoration: const BoxDecoration(

                image: DecorationImage(

                  image: AssetImage(
                    "assets/images/banner.png",
                  ),

                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}