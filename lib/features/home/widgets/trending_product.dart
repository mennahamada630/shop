import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/my_navigator.dart';
import '../../../core/utils/app_colors.dart';
import '../../product_details/views/product_details_view.dart';
import '../data/models/product_model.dart';

class TrendingProductWidget
    extends StatelessWidget {
  final ProductModel model;

  const TrendingProductWidget({super.key, required this.model,});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        MyNavigator.goTo(ProductDetailsView(
            model: model,
          ),
        );
      },
      child: Container(
        width: 170.w,
        margin: EdgeInsets.only(right: 15.w),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius:
          BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.shade200,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(15.r),
                  image: DecorationImage(
                    image:
                    NetworkImage(model.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              model.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              "\$${model.price}",
              style: TextStyle(
                color: AppColors.primaryPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}