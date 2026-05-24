
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'core/utils/app_colors.dart';
import 'features/splash/views/splash_view.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: (context,child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: AppColors.background,
              fontFamily: 'Libre_Caslon',
              appBarTheme: AppBarTheme(
                backgroundColor: AppColors.background,
                elevation:0,
              )
          ),
          home: SplashView()
      ),
    );
  }
}
