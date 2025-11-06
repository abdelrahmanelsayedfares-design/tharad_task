import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtom extends StatelessWidget {
  final String text;
  const AppButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: (){},
      child: Container(
        width: 350.w,
        height: 48.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color(0xFF5CC7A3),Color(0xFF265355)],
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
           text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
