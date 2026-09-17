import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tes/core/routes/helpers/spacing.dart';
import 'package:tes/core/styles/color.dart';
import 'package:tes/core/styles/fonts/app_fonts_style.dart';
import 'package:tes/feature/logic/widgets/app_text_button.dart';
import 'package:tes/feature/logic/widgets/app_text_form_filed.dart';
import 'package:tes/feature/logic/widgets/remember_forget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // مفتاح للـ Form للتحقق من المدخلات
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // متغير للتحكم بإظهار وإخفاء كلمة المرور
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131313),
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                // خلفية الـ SVG
                Positioned(
                  left: -50,
                  top: 150,
                  child: Transform.rotate(
                    angle: 1.55 * (math.pi / 180),
                    child: SvgPicture.asset(
                      'assets/svgs/groub.svg',
                      width: 400.w,
                      fit: BoxFit.contain,
                      height: 450.h,
                    ),
                  ),
                ),

                // المحتوى الرئيسي للصفحة
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Space.vertical(20),

                      // 1. قسم الترحيب (على اليسار)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: AppFontsStyles.font1,
                          ),
                          const Space.vertical(8),
                          Text(
                            "We're Excited To Have You Back",
                            style: AppFontsStyles.font5,
                          ),
                        ],
                      ),

                      const Space.vertical(50),

                      // 2. حقول الإدخال مغلفة داخل Form
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // حقل البريد الإلكتروني
                            AppTextFormField(
                              hintText: 'Email',
                              obscureText: false,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                            ),
                            const Space.vertical(16),

                            // حقل كلمة المرور مع زر إظهار/إخفاء النص
                            AppTextFormField(
                              hintText: 'Password',
                              obscureText: isPasswordHidden,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isPasswordHidden
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPasswordHidden = !isPasswordHidden;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Space.vertical(40),

                      // تذكرني ونسيت كلمة المرور
                      const RememberForgetWidget(),
                      const Space.vertical(50),

                      // 3. زر تسجيل الدخول المخصص (يعمل بعرض الشاشة بالكامل وبدون سنتر)
                      SizedBox(
                        width: double.infinity,
                        child: AppTextButton(
                          buttonText: 'Log in',
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print("Login Successfully");
                            }
                          },
                        ),
                      ),
                      const Space.vertical(50),

                      // 4. فاصل (Or Sign in With)
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(color: Colors.grey, thickness: 0.5),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Or Sign in With",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(color: Colors.grey, thickness: 0.5),
                          ),
                        ],
                      ),

                      const Space.vertical(50),

                      // 5. النص السفلي (الشروط والأحكام)
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: AppFontsStyles.font6,
                            children: [
                              const TextSpan(
                                text: "By logging you agree to our ",
                              ),
                              TextSpan(
                                text: "Terms & Conditions",
                                style: AppFontsStyles.font7,
                              ),
                              const TextSpan(text: "\nand "),
                              TextSpan(
                                text: "Privacy Policy",
                                style: AppFontsStyles.font7,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}