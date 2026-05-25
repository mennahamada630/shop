import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedSection extends StatelessWidget {

  final String title;

  final VoidCallback? onSeeAll;

  const FeaturedSection({super.key, required this.title, this.onSeeAll,});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onSeeAll,
          child: Text(
            "See All",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}