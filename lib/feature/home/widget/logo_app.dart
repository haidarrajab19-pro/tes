import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tes/core/styles/fonts/app_fonts_style.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 320.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. النقشة الخلفية ملتصقة بأقصى اليسار تماماً
          Positioned(
            left: -50,
            top: 0,
            child: Transform.rotate(
              angle: 1.5 * (math.pi / 180),
              child: SvgPicture.asset(
                'assets/svgs/groub.svg',
                width: 380.w,
                fit: BoxFit.contain,
              ),
            ),
            
          ),

          // 2. المحتوى الأمامي (النصوص) في المنتصف فوق النقشة
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Let's pick up a",
                textAlign: TextAlign.center,
                style: AppFontsStyles.font2,
              ),
              SizedBox(height: 10.h),
              SvgPicture.asset(
                'assets/svgs/tesla1.svg',
                height: 30.h,
              ),
              SizedBox(height: 10.h),
              Text(
                "for you",
                textAlign: TextAlign.center,
                style: AppFontsStyles.font2,
              ),
            ],
          ),
        


        ],
      ),
    );
  }
}