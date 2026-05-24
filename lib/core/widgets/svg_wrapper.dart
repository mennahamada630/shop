
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SvgWrappers extends StatelessWidget {
  const SvgWrappers ({super.key, required this.svgPath, this.height, this.width});

  final String svgPath;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
      svgPath,
      height:height ,
      width: width,
    );
  }
}
