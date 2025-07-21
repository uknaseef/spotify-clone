import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';
import '../../../services/routes/route_constants.dart';
import '../../components/common_widgets/primary_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            Assets.imagesGetStartedBg,
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
                        "Enjoy Listening To Music",
                        style: FontPalette.font22Bold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      21.verticalSpace,
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                        textAlign: TextAlign.center,
                        style: FontPalette.font17Regular.copyWith(
                          color: Color(0xff797979),
                        ),
                      ),
                      37.verticalSpace,
                      PrimaryButton(
                        text: "Get Started",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteConstants.routeChooseMood,
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
