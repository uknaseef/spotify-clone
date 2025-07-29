import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';

class TabTileWidget extends StatelessWidget {
  const TabTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 185,
                  width: 147,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/d1/d0/93/d1d0930245038425436cb5fefb874384.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                13.verticalSpace,
              ],
            ),
            Positioned(
              bottom: 5,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                height: 29.r,
                width: 29.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE6E6E6),
                ),
                child: SvgPicture.asset(
                  Assets.svgPlayButton,
                  height: 11.r,
                  width: 11.r,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bad Guy", style: FontPalette.font16Bold),
              3.verticalSpace,
              Text("Billie Eilish", style: FontPalette.font14Regular),
            ],
          ),
        ),
      ],
    );
  }
}
