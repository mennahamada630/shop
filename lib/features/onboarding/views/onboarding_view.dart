
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_colors.dart';
import '../../get_started/views/get_started.dart';
import '../cubit/onboarding_cubit.dart';
import '../cubit/onboarding_state.dart';
import '../widgets/onboarding_item.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {

          var cubit = OnboardingCubit.get(context);

          return Scaffold(

            body: SafeArea(
              child: Column(

                children: [

                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        MyNavigator.goTo(GetStartedView(),);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: PageView.builder(
                      controller: cubit.pageController,
                      itemCount: cubit.onboardingList.length,
                      onPageChanged: (index) {
                        cubit.changePage(index);
                      },
                      itemBuilder: (context, index) {
                        return OnboardingItem(
                          model: cubit.onboardingList[index],
                        );
                      },
                    ),
                  ),

                  SmoothPageIndicator(
                    controller: cubit.pageController,
                    count: cubit.onboardingList.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primaryPink,
                      dotColor: Colors.grey.shade300,
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                    ),
                  ),

                  SizedBox(height: 40.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [

                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Prev",
                            style: TextStyle(
                              color: AppColors.lightGrey,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {

                            if (cubit.currentIndex ==
                                cubit.onboardingList.length - 1) {

                              MyNavigator.goTo(GetStartedView(),);

                            } else {

                              cubit.pageController.nextPage(
                                duration:
                                const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Text(
                            cubit.currentIndex ==
                                cubit.onboardingList.length - 1
                                ? "Get Started"
                                : "Next",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}