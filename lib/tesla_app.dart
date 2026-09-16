import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tes/core/routes/app_routes.dart';
import 'package:tes/core/routes/routes.dart';

class TeslaApp extends StatelessWidget {
  const TeslaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tesla App',
          initialRoute: Routes.homeScreen,
          onGenerateRoute: AppRoutes.generateRoute,
        );
        
      },
    );
  }
}