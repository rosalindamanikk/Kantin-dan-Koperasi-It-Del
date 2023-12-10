import 'package:delmart/shared/theme.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class CardItemMenu extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final IconData icon;

  const CardItemMenu({
    Key? key,
    required this.title,
    this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: white,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: CustomButton(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: dark,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: dark,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
