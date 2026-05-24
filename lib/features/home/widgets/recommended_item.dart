
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../data/models/product_model.dart';

class RecommendedItem extends StatelessWidget {

  final ProductModel model;

  const RecommendedItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(10.r),

      decoration: BoxDecoration(

        color: AppColors.white,

        borderRadius:
        BorderRadius.circular(20.r),

        boxShadow: [

          BoxShadow(

            blurRadius: 8,

            offset: const Offset(0, 3),

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
                BorderRadius.circular(18.r),

                image: DecorationImage(

                  image:
                  NetworkImage(model.image),

                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 12.h),

          Text(

            model.title,

            maxLines: 1,

            overflow: TextOverflow.ellipsis,

            style: TextStyle(

              fontSize: 16.sp,

              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 6.h),

          Row(

            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

            children: [

              Text(

                "\$${model.price}",

                style: TextStyle(

                  color: AppColors.primaryPink,

                  fontSize: 17.sp,

                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(

                padding: EdgeInsets.all(6.r),

                decoration: BoxDecoration(

                  color: AppColors.primaryPink,

                  borderRadius:
                  BorderRadius.circular(10.r),
                ),

                child: Icon(

                  Icons.favorite_border,

                  color: AppColors.white,

                  size: 18.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}