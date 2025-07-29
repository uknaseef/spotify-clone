import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/font_pallete.dart';

class SupportText extends StatelessWidget {
  const SupportText({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return RichText(
      text: TextSpan(
        style: FontPalette.font12Regular.copyWith(color: Colors.black),
        children: [
          TextSpan(
            text: 'If You Need Any Support ',
            style: TextStyle(
              color: isDark ? Color(0xffF2F2F2) : Color(0xff383838),
            ),
          ),
          TextSpan(
            text: 'Click Here',
            style: FontPalette.font12Regular.copyWith(color: Color(0xff38B432)),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle the click action
                    print('Click Here tapped!');
                  },
          ),
        ],
      ),
    );
  }
}