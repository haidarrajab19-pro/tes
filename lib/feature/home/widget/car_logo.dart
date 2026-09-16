import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CarLogo extends StatelessWidget {
  const CarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: 1.sw,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. شعار تيسلا الخلفي الرمادي (tesla2) بعرض الشاشة الكامل وبدون تسبب بأي تعليق
          Positioned(
            top: 40.h,
            child: SvgPicture.asset(
              'assets/svgs/tesla2.svg',
              // width: 1.sw, // يأخذ عرض الشاشة بالكامل بأمان تام
              fit: BoxFit.contain,
            ),
          ),

          // 2. صورة السيارة في المنتصف
          Positioned(
            top: 100.h,
            left: 100.w,
            child: Image.asset(
              'assets/images/car.png',
              height: 300.h,
              width: 280.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}