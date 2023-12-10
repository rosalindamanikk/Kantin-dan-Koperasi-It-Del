import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final LinearGradient? gradient;
  final Color? color;
  final String text;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;
  final double width;
  final double height;
  final Icon? icon;

  const CustomFilledButton({
    Key? key,
    this.gradient,
    this.color,
    required this.text,
    required this.onPressed,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.width = double.infinity,
    this.height = 50,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        gradient: gradient,
        color: color,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
