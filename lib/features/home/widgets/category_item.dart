import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {

  final CategoryModel model;
  const CategoryItem({super.key, required this.model,});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        children: [
          Container(
            width: 65.w,
            height: 65.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightGrey,
              image: DecorationImage(
                image: NetworkImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            model.title,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}