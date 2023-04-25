import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final text;
  final obscure;
  final maxLength;
  final keyBoardTYpe;
  final prefixicon;
  final String? Function(String?)? validator;
  final controller;
  final formkey;
  final labelText;
  final decoration;
  final EdgeInsetsGeometry? contentPadding;

  CommonTextFormField({
    super.key,
    required this.text,
    required this.obscure,
    this.maxLength,
    this.keyBoardTYpe,
    this.prefixicon,
    this.contentPadding,
    this.validator,
    this.controller,
    this.formkey,
    this.labelText,
    this.decoration,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return TextFormField(
      key: formkey,
      controller: controller,
      validator: validator,
      obscureText: obscure,
      maxLength: maxLength,
      keyboardType: keyBoardTYpe,
      textInputAction: TextInputAction.next,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        counterText: "",
        contentPadding: contentPadding,
        filled: true,
        hintText: text,
        labelText: labelText,
        border: InputBorder.none,
        hintStyle: TextStyle(color: Color(0xffB6B7B7)),
        fillColor: Color(0xffF2F2F2),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(height * 0.055),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(height * 0.055),
          borderSide: BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(height * 0.055),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(height * 0.055),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
