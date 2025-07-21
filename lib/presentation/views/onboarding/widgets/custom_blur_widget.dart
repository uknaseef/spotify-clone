import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/font_pallete.dart';

class CustomBlurWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function()? onTap;
  const CustomBlurWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              width: 73.r,
              height: 73.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.01),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  child: Center(
                    child: SvgPicture.asset(iconPath, width: 25.w, height: 29.h),
                  ),
                ),
              ),
            ),
          ),
        ),
        15.verticalSpace,
        Text(
          title,
          style: FontPalette.font17Medium.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
