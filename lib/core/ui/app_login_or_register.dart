import 'package:flutter/material.dart';

class AppLoginOrRegister extends StatelessWidget {
  final String text;
  final String title;
  final void Function() onbreased;
  const AppLoginOrRegister({super.key, required this.text, required this.title,required this.onbreased});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),

        TextButton(
          onPressed: onbreased,
          child:
          Text(
            title,
            style: TextStyle(
              color: Color(0xff42867B),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),

        ),
      ],
    );
  }
}
