import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tharad_task/core/logic/helper_methods.dart';
import 'package:tharad_task/core/ui/app_images.dart';
import '../../core/ui/app_buttom.dart';
import '../home/home.dart';

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
                    CircularCountDownTimer(
                      width: 0,
                      height: 0,
                      duration: 90,
                      fillColor: Colors.transparent,
                      ringColor: Colors.transparent,
                      // strokeWidth: 0,
                      // isTimerTextShown: false,
                      isReverse: true,
                    ),
                    StreamBuilder<int>(
                      stream: Stream.periodic(
                        const Duration(seconds: 1),
                        (i) => i,
                      ).take(61),
                      builder: (context, snapshot) {
                        int remaining = 60 - (snapshot.data ?? 0);
                        String formatted =
                            "0:${remaining.toString().padLeft(2, '0')}";
                        return Text(
                          formatted,
                             style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff998C8C),
                            ),
                        );
                      },
                    ),
                    Spacer(),
                    Text(
                      'لم يصلك رمز؟',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0D1D1E),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'إعادة ارسال',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff42867B),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                AppButtom(
                  text: 'المتابعة',
                  width: 350.w,
                  ontap: () {
                    goTo(canPop: false, HomeProfileViews());
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
