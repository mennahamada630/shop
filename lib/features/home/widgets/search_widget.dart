import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
class SearchWidget extends StatelessWidget {

  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(

        hintText: "Search any Product..",

        prefixIcon: const Icon(Icons.search),

        suffixIcon: const Icon(Icons.mic_none),

        filled: true,

        fillColor: AppColors.lightGrey,

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15.r),

          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15.r),

          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
