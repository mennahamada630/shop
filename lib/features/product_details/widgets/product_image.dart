import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageWidget extends StatelessWidget {

  final String image;

  const ProductImageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 320.h,

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(25.r),

        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}