import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space extends StatelessWidget {
  final double? height;
  final double? width;

  // مسافة عمودية (ارتفاع)
  const Space.vertical(double h, {super.key})
      : height = h,
        width = null;

  // مسافة أفقية (عرض)
  const Space.horizontal(double w, {super.key})
      : width = w,
        height = null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
    );
  }
}