import 'package:flutter/material.dart';

class AppLoginOrRegister extends StatelessWidget {
  final String text;
  final String title;
<<<<<<< HEAD
  final void Function() onbreased;
  const AppLoginOrRegister({super.key, required this.text, required this.title,required this.onbreased});
=======
  const AppLoginOrRegister({super.key, required this.text, required this.title});
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
<<<<<<< HEAD
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
=======
        TextButton(
          onPressed: () {},
          child: Text(
          text,
            style: TextStyle(
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
<<<<<<< HEAD

=======
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff42867B),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
>>>>>>> a01036d574baf110a47ab371cf294102041c9ba7
        ),
      ],
    );
  }
}
