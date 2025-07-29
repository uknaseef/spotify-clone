import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';
import 'package:spotify_clone/presentation/components/common_widgets/primary_button.dart';
import 'package:spotify_clone/presentation/views/auth/widgets/sign_body_widget.dart';
import 'package:spotify_clone/services/routes/route_constants.dart';

class SignOrLogScreen extends StatelessWidget {
  const SignOrLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SignBodyWidget(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                175.verticalSpace,
                SvgPicture.asset(Assets.svgVector, height: 71.h, width: 235.w),
                55.verticalSpace,
                Text(
                  "Enjoy Listening To Music",
                  style: FontPalette.font26Bold.copyWith(
                    color: isDark ? Color(0xffF2F2F2) : Color(0xff383838),
                    letterSpacing: 0,
                  ),
                ),
                21.verticalSpace,
                Text(
                  "Spotify is a proprietary Swedish audio streaming and media services provider",
                  textAlign: TextAlign.center,
                  style: FontPalette.font17Regular.copyWith(
                    color: isDark ? Color(0xffA0A0A0) : Color(0xff797979),
                    letterSpacing: 0,
                  ),
                ),
                29.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.w,
                        vertical: 24.h,
                      ),
                      elevation: 0,
                      borderRadius: 30.r,
                      textStyle: FontPalette.font19Bold.copyWith(
                        color: Colors.white,
                      ),
                      text: "Register",
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            RouteConstants.routeSignupScreen,
                          ),
                    ),
                    PrimaryButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.w,
                        vertical: 24.h,
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      textStyle: FontPalette.font19Bold,
                      borderRadius: 30.r,
                      text: "Sign in",
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            RouteConstants.routeSignInScreen,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
