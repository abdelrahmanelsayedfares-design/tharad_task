import 'package:flutter/material.dart';

class AppCheck extends StatefulWidget {
  const AppCheck({super.key});

  @override
  State<AppCheck> createState() => _AppCheckState();
}

bool check = false;

class _AppCheckState extends State<AppCheck> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: BorderSide(color: const Color(0xFF0D1D1E), width: 1.5),
              value: check,
              onChanged: (val) {
                setState(() {
                  check = val ?? false;
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
