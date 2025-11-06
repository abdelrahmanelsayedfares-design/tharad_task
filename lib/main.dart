import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/views/auth/login.dart' show LoginView;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          // locale: const Locale('ar', 'EG'),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350.w, 48.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8.r),
                ),
              ),
            ),
            fontFamily: 'Tajawal',
            scaffoldBackgroundColor: Color(0xffFFFFFF),
            textTheme: TextTheme(
              bodyMedium: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              bodySmall: TextStyle(
                fontSize: 10.sp,
                color: Color(0xff0D1D1E),
                fontWeight: FontWeight.w500,
              ),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: Directionality(
            textDirection: TextDirection.rtl,
            child: LoginView(),
          ),
        );
      },
    );
  }
}
