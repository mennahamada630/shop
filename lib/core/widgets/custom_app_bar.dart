import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return AppBar(

      centerTitle: true,

      backgroundColor: AppColors.white,

      elevation: 0,

      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),

      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.black,
        ),
      ),
    );
  }
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);
}