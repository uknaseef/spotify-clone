import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/theme_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final EdgeInsets padding;
  final double elevation;
  final TextStyle? textStyle;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = AppColors.darkPrimary,
    this.textColor = Colors.white,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    this.elevation = 4.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          child: Center(
            child: Text(
              text,
              style:
                  textStyle ??
                  TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
