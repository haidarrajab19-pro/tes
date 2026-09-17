import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  // مساحات الحشو الداخلية (Padding) للنص داخل الحقل
  final EdgeInsetsGeometry? contentPadding;
  
  // شكل الحدود الخاص بالحقل عندما يكون محددًا أو عليه التركيز (Focused)
  final InputBorder? focusedBorder;
  
  // شكل الحدود الافتراضية للحقل عندما لا يكون عليه تركيز
  final InputBorder? enabledBorder;
  
  // تنسيق وستايل النص الذي يكتبه المستخدم داخل الحقل
  final TextStyle? inputTextStyle;
  
  // تنسيق وستايل النص التوضيحي (Hint Text) الباهت قبل الكتابة
  final TextStyle? hintStyle;
  
  // النص التوضيحي الذي يظهر داخل الحقل (مثل Email أو Password)
  final String hintText;
  
  // لتحديد ما إذا كان النص مخفياً (مثل نقاط كلمة المرور) أم ظاهراً
  final bool? obscureText;
  
  // أيقونة تظهر في نهاية الحقل (مثل زر إظهار وإخفاء كلمة المرور)
  final Widget? suffixIcon;
  
  // لون خلفية الحقل (جعلناه شفافاً أو قابلاً للتمرير)
  final Color? backgroundColor;
  
  // للتحكم بالنص المدخل وقراءته برمجياً (TextEditingController)
  final TextEditingController? controller;
  
  // دالة التحقق من صحة المدخلات (Validation)
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ربط المتحكم بالحقل
      controller: controller,
      
      // تطبيق إخفاء/إظهار النص (مع قيمة افتراضية false إن لم تُمرر)
      obscureText: obscureText ?? false,
      
      // ستايل النص المدخل
      style: inputTextStyle ?? const TextStyle(color: Colors.white),
      
      // دالة التحقق من الأخطاء
      validator: (value) {
        return validator(value);
      },
      
      decoration: InputDecoration(
        // تفعيل تعبئة لون خلفية الحقل
        filled: true,
        
        // جعل خلفية الحقل شفافة (Transparent) أو أخذ اللون المُمرر إن وجد
        fillColor: backgroundColor ?? Colors.transparent,
        
        // الهوامش الداخلية للحقل
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            
        // الحدود عند التركيز
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFF00C853),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
            
        // الحدود الافتراضية
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(56, 237, 237, 237),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
            
        // حدود الخطأ
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        
        // حدود الخطأ عند التركيز
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        
        // النصوص والأيقونات
        hintText: hintText,
        hintStyle: hintStyle ?? const TextStyle(color: Colors.grey),
        suffixIcon: suffixIcon,
      ),
    );
  }
}