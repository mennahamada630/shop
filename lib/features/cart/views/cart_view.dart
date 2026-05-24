import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Cart"),
      ),

      bottomNavigationBar: Padding(

        padding: EdgeInsets.all(20.r),

        child: SizedBox(

          height: 55.h,

          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryPink,
            ),

            onPressed: () {},

            child: const Text("Checkout"),
          ),
        ),
      ),

      body: ListView.builder(

        padding: EdgeInsets.all(20.r),

        itemCount: 3,

        itemBuilder: (context, index) {

          return Container(

            margin: EdgeInsets.only(bottom: 15.h),

            padding: EdgeInsets.all(10.r),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(20.r),
            ),

            child: Row(

              children: [

                Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius:
                    BorderRadius.circular(15.r),
                  ),
                ),

                SizedBox(width: 15.w),

                Expanded(

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      Text(
                        "Mens Jacket",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "\$45",
                        style: TextStyle(
                          color: AppColors.primaryPink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}