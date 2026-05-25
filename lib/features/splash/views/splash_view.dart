import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/utils/app_font_weight.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_colors.dart';
import '../../onboarding/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
       Duration(seconds: 3),
          ()=> MyNavigator.goTo ( OnboardingView(),
          type: NavigatorType.pushAndRemoveUntil),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Stylish',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: AppFontWeight.bold,
                color: AppColors.primaryPink
              ),
            ),
          )
        ],
      )


    );
  }
}