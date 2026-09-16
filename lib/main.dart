import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tes/tesla_app.dart';

void main() {
  // التأكد من ربط الويدجتس
  WidgetsFlutterBinding.ensureInitialized();

  // إخفاء شريط الحالة (الإشعارات) والشريط السفلي بوضع التثبيت (الذي يعود ويختفي عند السحب)
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  // (اختياري) لتحديد لون شفافة أو محدد لأشرطة النظام لو ظهرت لاحقاً
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),


    
  );

  runApp(const TeslaApp());
}