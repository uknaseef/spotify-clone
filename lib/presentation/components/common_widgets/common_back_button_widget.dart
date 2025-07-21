import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/generated/assets.dart';

class CommonBackButtonWidget extends StatelessWidget {
  const CommonBackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ClipRRect(
      borderRadius: BorderRadius.circular(150),
      child: Material(
        color:
            isDark
                ? Colors.white.withValues(alpha: 0.1)
                : Color(0xffffffff).withValues(alpha: 0.4),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10.w),
            child: Center(
              child: Image.asset(
                Assets.pngBackIcon,
                height: 12,
                width: 6,
                color: isDark ? Color(0xffdddddd) : Color(0xff414141),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
