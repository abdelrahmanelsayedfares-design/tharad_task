import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_images.dart';
import 'package:tharad_task/views/auth/login.dart';
import 'package:tharad_task/views/auth/verify_vode.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_image_picker.dart';
import '../../core/ui/app_input.dart';
import '../../core/ui/app_login_or_register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 86,
                      vertical: 80,
                    ).r,
                    child: AppImage(
                      image: 'logo.png',
                      height: 58.h,
                      width: 178.w,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Center(
                    child: Text(
                      'إنشاء حساب جديد',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'الصورة الشخصية',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 6.h),
                  CustomImagePicker(),
                  SizedBox(height: 12.h),
                  Text(
                    'اسم المستخدم',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 6.h),
                  AppInput(text: 'thar22', keyboardType: TextInputType.name),
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
                  Text(
                    'تأكيد كلمة المرور',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 6.h),
                  AppInput(
                    text: '********',
                    isPassword: true,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 40),
                  AppButtom(
                    width: 350.w,
                    text: 'إنشاء حساب جديد',
                    ontap: () {
                      goTo(canPop: true, VerifyCodeView());
                    },
                  ),
                  SizedBox(height: 12.h),
                  AppLoginOrRegister(
                    text: 'لديك حساب؟',
                    title: ' تسجيل الدخول',
                    onbreased: () {
                     goTo(canPop: false,LoginView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
