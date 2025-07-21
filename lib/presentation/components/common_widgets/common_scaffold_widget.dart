import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/presentation/components/common_widgets/common_back_button_widget.dart';

import '../../../generated/assets.dart';

class AuthScaffoldWidget extends StatelessWidget {
  final Widget? body;
  const AuthScaffoldWidget({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            56.verticalSpace,
            Row(
              children: [
                CommonBackButtonWidget(),
                82.horizontalSpace,
                SvgPicture.asset(Assets.svgVector, width: 108.w, height: 33.h),
              ],
            ),
            22.verticalSpace,
            body ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
