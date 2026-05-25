import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/features/product_details/cubit/product_details_cubit.dart';

import '../../../core/utils/app_colors.dart';
import '../../home/data/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {

  final ProductModel model;

  const ProductDetailsView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    var cubit = ProductDetailsCubit.get(context);
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20.r),
        child: SizedBox(
          height: 55.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryPink,
            ),
            onPressed: () {},
            child: const Text("Add To Cart"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Container(
              height: 300.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:
                BorderRadius.circular(20.r),
              ),
            ),

            SizedBox(height: 20.h),

            Text(
              "Mens Starry",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              "\$100",
              style: TextStyle(
                fontSize: 22.sp,
                color: AppColors.primaryPink,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.h),

            Text(
              "Product Description Product Description Product Description",
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}