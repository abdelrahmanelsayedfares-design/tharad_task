import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_images.dart';
import 'package:tharad_task/views/auth/register.dart';
import 'package:tharad_task/views/home/views.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_check.dart';
import '../../core/ui/app_input.dart';
import '../../core/ui/app_login_or_register.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 86,
                    vertical: 120,
                  ).copyWith(bottom: 100).r,
                  child: AppImage(image: 'logo.png'),
                ),
                Center(child: Text('تسجيل الدخول')),
                SizedBox(height: 24.h),
                Text(
                  'البريد الإلكتروني',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  text: 'Tharad@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                ),
                Text(
                  'كلمة المرور',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  text: '********',
                  isPassword: true,
                  keyboardType: TextInputType.text,
                ),
                AppCheck(),
                SizedBox(height: 40.h),
                AppButtom(
                  width: 350.w,
                  text: 'تسجيل الدخول',
                  ontap: () {
                    goTo(canPop: false, HomeView());
                  },
                ),
                AppLoginOrRegister(
                  text: 'ليس لديك حساب؟',
                  title: 'إنشاء حساب جديد',
                  onbreased: () {
                    goTo(canPop: false, RegisterView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
