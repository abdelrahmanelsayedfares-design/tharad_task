import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tharad_task/core/ui/app_images.dart';

import '../../core/ui/app_buttom.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0).r,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 86,
                    vertical: 120,
                  ).copyWith(bottom: 116).r,
                  child: AppImage(
                    image: 'logo.png',
                    width: 178.w,
                    height: 58.h,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'رمز التحقق\n'),
                      TextSpan(
                        text:
                            ' لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد\n الإلكتروني',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff998C8C),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                PinCodeTextField(
                  length: 4,
                  appContext: context,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 45,
                    fieldWidth: 45,
                    borderWidth: 1,
                    inactiveColor: const Color(0xffF0E6DE),
                    inactiveFillColor: Colors.transparent,
                    selectedColor: const Color(0xffF0E6DE),
                    selectedFillColor: Colors.transparent,
                    activeColor: const Color(0xffF0E6DE),
                    activeFillColor: Colors.transparent,
                    inactiveBorderWidth: 1,
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'إعادة ارسال',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff42867B)
                            ),
                          ),
                        ),
                        Text(
                          'لم يصلك رمز ؟',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                              color: Color(0xff0D1D1E)
                          ),
                        ),

                      ],
                    ),
                    Text(
                      '00:59 Sec',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff998C8C),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h,),
                AppButtom(text: 'المتابعة',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
