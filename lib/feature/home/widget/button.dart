import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes/core/routes/helpers/extension.dart';
import 'package:tes/core/routes/routes.dart';
import 'package:tes/core/styles/color.dart';
import 'package:tes/core/styles/fonts/app_fonts_style.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.radialGreenCenter,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.w),
                ),
              ),
            onPressed: () {
           context.pushNamed(Routes.loginScreen); // أو حسب الاسم المكتوب في ملف الـ routs.dart
            },
            
            child: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: AppFontsStyles.font3
            ),
            
          ),
        ) ;
  }
}