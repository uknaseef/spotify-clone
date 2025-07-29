import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';
import 'package:spotify_clone/presentation/components/common_widgets/primary_button.dart';
import 'package:spotify_clone/services/routes/route_constants.dart';
import '../../components/common_widgets/common_scaffold_widget.dart';
import '../../components/common_widgets/custom_textfield.dart';
import 'widgets/support_text_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AuthScaffoldWidget(
      body: Column(
        children: [
          60.verticalSpace,
          Text(
            "Sign In",
            style: FontPalette.font30Bold.copyWith(
              color: isDark ? Color(0xffF2F2F2) : Color(0xff383838),
            ),
          ),
          22.verticalSpace,
          SupportText(),
          38.verticalSpace,
          CustomTextField(hintText: "Enter Username Or Email"),
          16.verticalSpace,
          CustomTextField(hintText: "Password", isPassword: true),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("Recovery Password", style: FontPalette.font14Medium),
            ),
          ),
          22.verticalSpace,
          PrimaryButton(
            text: "Sign In",
            padding: EdgeInsets.symmetric(vertical: 27),
            borderRadius: 30.r,
            onTap: () {
              Navigator.pushNamed(context, RouteConstants.routeHomeScreen);
            },
          ),
          30.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Divider(color: Colors.black.withValues(alpha: .25)),
              ),
              11.horizontalSpace,
              Text("Or", style: FontPalette.font12Regular),
              11.horizontalSpace,
              Expanded(
                child: Divider(color: Colors.black.withValues(alpha: .25)),
              ),
            ],
          ),
          45.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.svgGoogleIcon),
              58.horizontalSpace,
              SvgPicture.asset(Assets.svgAppleIcon),
            ],
          ),
          40.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not A Member?"),
              TextButton(
                onPressed:
                    () => Navigator.pushNamed(
                      context,
                      RouteConstants.routeSignupScreen,
                    ),
                child: Text(
                  "Register Now",
                  style: FontPalette.font16Medium.copyWith(
                    color: Color(0xff288CE9),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



