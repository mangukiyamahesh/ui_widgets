import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final text;
  final VoidCallback onTap;

  const CommonButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      height: height * 0.07,
      minWidth: double.infinity,
      color: Color(0xffFC6011),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.05),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: height * 0.022),
      ),
    );
  }
}
