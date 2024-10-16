import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget navigateTo;
  final double horizontalPadding;
  final double verticalPadding;
  final BorderSide? side;
  final String text;

  const NavButton(
      {super.key,
      required this.backgroundColor,
      required this.navigateTo,
      required this.textStyle,
      required this.horizontalPadding,
      required this.verticalPadding,
      this.side,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigateTo));
      },
      style: ElevatedButton.styleFrom(
        side: side,
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      child: Text(text, style: textStyle),
    );
  }
}
