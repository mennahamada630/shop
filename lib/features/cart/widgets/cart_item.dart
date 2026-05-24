import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../home/data/models/product_model.dart';

class CartItemWidget extends StatelessWidget {

  final ProductModel model;

  final int quantity;

  final VoidCallback onAdd;

  final VoidCallback onRemove;

  final VoidCallback onDelete;

  const CartItemWidget({

    super.key,

    required this.model,

    required this.quantity,

    required this.onAdd,

    required this.onRemove,

    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: EdgeInsets.only(bottom: 15.h),

      padding: EdgeInsets.all(12.r),

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

      child: Row(

        children: [

          Container(

            width: 90.w,
            height: 90.h,

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

          SizedBox(width: 15.w),

          Expanded(

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(

                  model.title,

                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(

                  "\$${model.price}",

                  style: TextStyle(

                    color: AppColors.primaryPink,

                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10.h),

                Row(

                  children: [

                    GestureDetector(

                      onTap: onRemove,

                      child: CircleAvatar(

                        radius: 14.r,

                        backgroundColor:
                        AppColors.lightGrey,

                        child: const Icon(
                          Icons.remove,
                          size: 18,
                        ),
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Text("$quantity"),

                    SizedBox(width: 10.w),

                    GestureDetector(

                      onTap: onAdd,

                      child: CircleAvatar(

                        radius: 14.r,

                        backgroundColor:
                        AppColors.primaryPink,

                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
        ],
      ),
    );
  }
}