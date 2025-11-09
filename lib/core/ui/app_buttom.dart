import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtom extends StatelessWidget {
  final String text;
<<<<<<< HEAD
  final Function() ontap;
  final double width;
  const AppButtom({super.key, required this.text, required this.ontap, required this.width,});
=======
  const AppButtom({super.key, required this.text});
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7

  @override
  Widget build(BuildContext context) {
    return    InkWell(
<<<<<<< HEAD
      onTap: ontap,
      child: Container(
        width: width,
=======
      onTap: (){},
      child: Container(
        width: 350.w,
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
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
