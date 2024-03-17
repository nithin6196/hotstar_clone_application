// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.textColor = ColorConstants.normalBlack,
      this.buttonColor = ColorConstants.normalWhite,
      this.haveBorder = false,
      this.verticalPadding = 15,
      this.horizontalPadding = 0,
      this.onTap,
      this.icon = Icons.notifications_none,
      this.isVisible = false});
  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool haveBorder;
  final double verticalPadding;
  final double horizontalPadding;
  final IconData icon;
  final bool isVisible;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(5),
              border: haveBorder == true
                  ? Border.all(
                      color: ColorConstants.normalBlack.withOpacity(0.4))
                  : null),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isVisible ? Icon(icon) : SizedBox(),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ));
  }
}
