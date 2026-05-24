import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/svg_wrapper.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_font_weight.dart';
import '../../auth/views/login_view.dart';
import '../../auth/views/register_view.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        fit: StackFit.expand,

        children: [
          SvgWrappers(svgPath: AppAssets.getStartedWallpaper),

          // Image.asset(
          //   AppAssets.getStarted,
          //   fit: BoxFit.cover,
          // ),

          Container(
            color: Colors.black.withOpacity(.4),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 450.h),

                Text(
                  "You want\nAuthentic, here\nyou go!",
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: AppFontWeight.italic,
                    color: AppColors.white,
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 15.h),

                Text(
                  "Find it here, buy it now!",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.secondaryText,
                  ),
                ),

                SizedBox(height: 40.h),

                SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryPink,
                    ),

                    onPressed: ()=> MyNavigator.goTo(LoginView()),


                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15.h),

                SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryPink,
                    ),

                    onPressed: () => MyNavigator.goTo(RegisterView()),


                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}