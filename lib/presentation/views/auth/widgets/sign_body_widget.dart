import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/generated/assets.dart';

import '../../../components/common_widgets/common_back_button_widget.dart';

class SignBodyWidget extends StatelessWidget {
  final Widget body;
  const SignBodyWidget({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        Image.asset(
          isDark
              ? Assets.imagesResigsterOrSignUpBg
              : Assets.imagesResigsterOrSignUpBgLight,
        ),
        Positioned(top: 56, left: 30.w, child: CommonBackButtonWidget()),
        Positioned(
          bottom: 0,
          child: Image.asset(Assets.imagesBillieilishAuthImage, height: 430),
        ),
        body,
      ],
    );
  }
}
