import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Color backgroundColor;
  final TextStyle textStyle;
  final GestureTapCallback navigateTo;
  final double horizontalPadding;
  final double verticalPadding;
  final double borderRadius;
  final String label;
  final Color? borderColor;

  const NavButton(
      {super.key,
      required this.backgroundColor,
      required this.navigateTo,
      required this.textStyle,
      required this.horizontalPadding,
      required this.verticalPadding,
      required this.borderRadius,
      required this.label,
        this.borderColor
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateTo,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor ?? Colors.transparent,
            )
          ),
          child: Text(
            label,
            style: textStyle,
          )),
    );
  }
}
