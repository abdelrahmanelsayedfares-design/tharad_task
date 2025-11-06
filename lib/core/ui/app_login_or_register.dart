import 'package:flutter/material.dart';

class AppLoginOrRegister extends StatelessWidget {
  final String text;
  final String title;
  const AppLoginOrRegister({super.key, required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
          text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff42867B),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
