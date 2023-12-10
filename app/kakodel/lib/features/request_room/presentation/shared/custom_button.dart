import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  final BoxDecoration? decoration;

  const CustomButton({
    Key? key,
    this.onPressed,
    this.width,
    this.height,
    this.color,
    required this.child,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: decoration,
        child: child,
      ),
    );
  }
}
