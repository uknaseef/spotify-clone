import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';
import '../../../services/routes/route_constants.dart';
import '../../components/common_widgets/primary_button.dart';
import '../../viewmodels/theme_viewmodel.dart';
import 'widgets/custom_blur_widget.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeViewmodel = context.read<ThemeViewmodel>();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.imagesChooseModeBg,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  57.verticalSpace,
                  SvgPicture.asset(
                    Assets.svgVector,
                    width: 196.w,
                    height: 59.h,
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Choose Modes",
                        style: FontPalette.font22Bold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      32.verticalSpace,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomBlurWidget(
                            iconPath: Assets.svgDarkIcon,
                            title: "Dark Mode",
                            onTap: () {
                              themeViewmodel.setDarkTheme();
                            },
                          ),
                          65.horizontalSpace,
                          CustomBlurWidget(
                            iconPath: Assets.svgLightIcon,
                            title: "Light Mode",
                            onTap: () {
                              themeViewmodel.setLightTheme();
                            },
                          ),
                        ],
                      ),
    
                      68.verticalSpace,
                      PrimaryButton(
                        text: "Continue",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteConstants.routeSignOrLogScreen,
                          );
                        },
                        borderRadius: 30.r,
                        textStyle: FontPalette.font22Bold.copyWith(
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                      ),
                    ],
                  ),
                  69.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
