import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductColorWidget extends StatelessWidget {

  final int color;

  final bool selected;

  final VoidCallback onTap;

  const ProductColorWidget({

    super.key,

    required this.color,

    required this.selected,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onTap,

      child: Container(

        margin: EdgeInsets.only(right: 10.w),

        width: 35.w,
        height: 35.h,

        decoration: BoxDecoration(

          shape: BoxShape.circle,

          color: Color(color),

          border: Border.all(

            width: selected ? 3 : 1,

            color: selected
                ? Colors.black
                : Colors.grey,
          ),
        ),
      ),
    );
  }
}