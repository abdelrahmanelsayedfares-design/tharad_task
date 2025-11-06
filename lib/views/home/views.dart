import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad_task/core/ui/app_images.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_image_picker.dart';
import '../../core/ui/app_input.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5CC7A3),
      appBar: AppBar(
        toolbarHeight: 112,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5CC7A3), Color(0xFF265355)],
            ),
          ),
        ),
        title: Text('الملف الشخصي'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0).copyWith(right: 0),
            child: AppImage(image: 'msg.png', height: 28.h, width: 28.w),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اسم المستخدم',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(keyboardType: TextInputType.text, text: 'thar22'),
                Text(
                  'البريد الإلكتروني',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  keyboardType: TextInputType.emailAddress,
                  text: 'Tharad@gmail.com',
                ),
                Text(
                  'الصورة الشخصية',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                CustomImagePicker(),
                SizedBox(height: 12.h),
                Text(
                  'كلمة المرور القديمة',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  keyboardType: TextInputType.text,
                  text: '***********',
                  isPassword: true,
                ),
                Text(
                  'كلمة المرور الجديدة',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  keyboardType: TextInputType.text,
                  text: '***********',
                  isPassword: true,
                ),
                Text(
                  'تأكيد كلمة المرور الجديدة',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 6.h),
                AppInput(
                  keyboardType: TextInputType.text,
                  text: '***********',
                  isPassword: true,
                ),
                SizedBox(height: 54.h),
                Center(child: AppButtom(text: 'حفظ التغيرات',width: 234.w,ontap:(){})),
                SizedBox(height: 10.h),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        color: Color(0xffFF1020),
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
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
