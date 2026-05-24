import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Checkout"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.r),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Text(
              "Delivery Address",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15.h),

            Container(

              padding: EdgeInsets.all(15.r),

              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius:
                BorderRadius.circular(20.r),
              ),

              child: Row(

                children: [

                  Expanded(
                    child: Text(
                      "Address type address here",
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: AppColors.primaryPink,
                      borderRadius:
                      BorderRadius.circular(15.r),
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Text(
              "Order Info",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: const [
                Text("Subtotal"),
                Text("\$79"),
              ],
            ),

            SizedBox(height: 15.h),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: const [
                Text("Shipping"),
                Text("\$2"),
              ],
            ),

            SizedBox(height: 15.h),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: const [
                Text("Total"),
                Text("\$81"),
              ],
            ),

            const Spacer(),

            SizedBox(

              width: double.infinity,
              height: 55.h,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryPink,
                ),

                onPressed: () {},

                child: const Text("Place Order"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}