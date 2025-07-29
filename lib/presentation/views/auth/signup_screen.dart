import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';
import 'package:spotify_clone/presentation/components/common_widgets/primary_button.dart';
import '../../components/common_widgets/common_scaffold_widget.dart';
import '../../components/common_widgets/custom_textfield.dart';
import 'widgets/support_text_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthScaffoldWidget(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            27.verticalSpace,
            Text(
              "Register",
              style: FontPalette.font30Bold.copyWith(
                color: Color(0xff383838),
                letterSpacing: -.8,
              ),
            ),
            15.verticalSpace,
            SupportText(),
            26.verticalSpace,
            CustomTextField(hintText: "Enter Username Or Email"),
            16.verticalSpace,
            CustomTextField(hintText: "Enter Username Or Email"),
            16.verticalSpace,
            CustomTextField(hintText: "Password", isPassword: true),
            22.verticalSpace,
            PrimaryButton(
              text: "Create Account",
              padding: EdgeInsets.symmetric(vertical: 27),
              borderRadius: 30.r,
              onTap: () {},
            ),
            29.verticalSpace,
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
            35.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do You Have An Account?"),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Sign In",
                    style: FontPalette.font16Medium.copyWith(
                      color: Color(0xff288CE9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

