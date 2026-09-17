import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes/core/styles/fonts/app_fonts_style.dart'; // إذا كنت تستخدم ScreenUtil

class RememberForgetWidget extends StatefulWidget {
  const RememberForgetWidget({super.key});

  @override
  State<RememberForgetWidget> createState() => _RememberForgetWidgetState();
}

class _RememberForgetWidgetState extends State<RememberForgetWidget> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // القسم الأيمن (Checkbox + Remember me) مغلف بـ Expanded لمنع الخروج عن الحدود
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 24.w,
                width: 24.w,
                child: Checkbox(
                  value: rememberMe,
                  activeColor: const Color(0xFF00C853),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // يزيل المساحات الفارغة الزائدة حول الشك بوكس
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value ?? false;
                    });
                  },
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  "Remember me",
                 style: AppFontsStyles.font8,
                  overflow: TextOverflow.ellipsis, // لقص النص لو الشاشة ضيقة جداً بدلاً من عمل Overflow
                ),
              ),
            ],
          ),
        ),
        
        // زر نسيت كلمة المرور
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          child:  Text(
            "Forgot Password?",
            style: AppFontsStyles.font8.copyWith(
              color: const Color(0xFF00C853),
            ),
          )
        ),
      ],
    );
  }
}