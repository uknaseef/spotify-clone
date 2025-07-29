import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';

import '../../../../generated/assets.dart';

class HomePlaylistTile extends StatelessWidget {
  const HomePlaylistTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15.r),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
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
                23.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("As It Was", style: FontPalette.font16Medium),
                    Text("Harry Styles", style: FontPalette.font12Regular),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "5:33",
                  style: FontPalette.font14Small.copyWith(color: Colors.black),
                ),
                49.horizontalSpace,
                SvgPicture.asset(Assets.svgFavFilled),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
