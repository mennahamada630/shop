import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {

  final String hint;

  final TextEditingController controller;

  final IconData? prefixIcon;

  final IconData? suffixIcon;

  final VoidCallback? suffixPressed;

  final bool isPassword;

  final TextInputType? keyboardType;

  const CustomTextField({

    super.key,

    required this.hint,

    required this.controller,

    this.prefixIcon,

    this.suffixIcon,

    this.suffixPressed,

    this.isPassword = false,

    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(

      controller: controller,

      obscureText: isPassword,

      keyboardType: keyboardType,

      validator: (value){

        if(value == null || value.isEmpty){

          return "Field required";
        }

        return null;
      },

      decoration: InputDecoration(

        hintText: hint,

        prefixIcon:
        Icon(prefixIcon),

        suffixIcon:
        suffixIcon != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffixIcon),
        )
            : null,

        filled: true,

        fillColor: AppColors.background,

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15.r),

          borderSide: BorderSide(
            color: AppColors.lightGrey
          )
        ),

        enabledBorder: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15.r),

          borderSide: BorderSide(
            color: AppColors.lightGrey
          ),
        ),

        focusedBorder: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15.r),

          borderSide: BorderSide(
            color: AppColors.primaryPink,
          ),
        ),
      ),
    );
  }
}