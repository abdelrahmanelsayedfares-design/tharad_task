import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatefulWidget {
  final String text;
  final bool isPassword;
  final TextInputType keyboardType;

  const AppInput({super.key, required this.text ,this.isPassword= false, required this.keyboardType});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12).r,
      child: TextFormField(
        keyboardType: widget.keyboardType ,
        obscureText: widget.isPassword? _obscureText : false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF4F7F6),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF0E6DE)),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffF0E6DE)),
          ),
          hintText: widget.text,
          hintStyle: TextStyle(fontSize: 10.sp, color: Color(0xff265355)),
          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xff265355),
              size: 20.r,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
