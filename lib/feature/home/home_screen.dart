import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes/core/styles/color.dart';
import 'package:tes/feature/home/widget/button.dart';
import 'package:tes/feature/home/widget/car_logo.dart';
import 'package:tes/feature/home/widget/logo_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.0, -0.2),
            radius: 0.85,
            colors: [
              AppColors.radialGreenCenter,
              AppColors.radialGreenMiddle,
              AppColors.backgroundBlack,
            ],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: SingleChildScrollView( 
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // تم حذف السطر الخاطئ الذي كان يستدعي TeslaApp هنا


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    const LogoApp(),
                    SizedBox(height: 20.h),
                    const CarLogo(),
                    SizedBox(height: 20.h),
                    const Button(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}