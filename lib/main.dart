import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/views/auth/login.dart' show LoginView;
<<<<<<< HEAD
import 'package:tharad_task/views/auth/register.dart';
import 'package:tharad_task/views/home/views.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/logic/helper_methods.dart';
=======
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7

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
<<<<<<< HEAD
          locale: const Locale('ar'),
          supportedLocales: const [Locale('ar'), Locale('en')],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF0E6DE)),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xffF0E6DE)),
              ),
            ),
            appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 16.sp,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            // elevatedButtonTheme: ElevatedButtonThemeData(
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: Size(350.w, 48.h),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadiusGeometry.circular(8.r),
            //     ),
            //   ),
            // ),
            fontFamily: 'Tajawal',
            scaffoldBackgroundColor: Color(0xffFFFFFF),
            textTheme: TextTheme(
              // labelLarge:TextStyle(
              //   fontSize: 16.sp,
              //   color: Color(0xffFFFFFF),
              //   fontWeight: FontWeight.bold,
              // ),
=======
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
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
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
<<<<<<< HEAD
          home: RegisterView(),
=======
          home: Directionality(
            textDirection: TextDirection.rtl,
            child: LoginView(),
          ),
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
        );
      },
    );
  }
}
