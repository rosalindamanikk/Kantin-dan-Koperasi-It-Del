import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final String? Function(String?)? onChanged;
  final bool? enabled;
  final bool autofocus;

  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.hintStyle = const TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
    ),
    this.enabledBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    this.focusedBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.enabled,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
      ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      enabled: enabled,
      autofocus: autofocus,
    );
  }
}
