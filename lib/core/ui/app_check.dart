import 'package:flutter/material.dart';

class AppCheck extends StatefulWidget {
  const AppCheck({super.key});

  @override
  State<AppCheck> createState() => _AppCheckState();
}

<<<<<<< HEAD
bool check = false;
=======
bool rememberMe = false;
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7

class _AppCheckState extends State<AppCheck> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
<<<<<<< HEAD
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: BorderSide(color: const Color(0xFF0D1D1E), width: 1.5),
              value: check,
              onChanged: (val) {
                setState(() {
                  check = val ?? false;
=======
              activeColor: const Color(0xFF0D8A6F),
              value: rememberMe,
              onChanged: (val) {
                setState(() {
                  rememberMe = val ?? false;
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
                });
              },
            ),
            Text(
              'تذكرني',
              style: TextStyle(fontSize: 12, color: Color(0xff0D1D1E)),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'هل نسيت كلمة المرور؟',
            style: TextStyle(fontSize: 10, color: Color(0xff42867B)),
          ),
        ),
      ],
    );
  }
}
