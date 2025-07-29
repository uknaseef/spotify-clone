import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'package:spotify_clone/generated/assets.dart';

class HomeBannerWidget extends StatelessWidget {
  final String? albumName;
  final String? title;
  final String? artist;
  const HomeBannerWidget({super.key, this.albumName, this.title, this.artist});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 118,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            image: DecorationImage(
              image: AssetImage(Assets.imagesHomeBannerBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 14),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  albumName ?? "",
                  style: FontPalette.font10Regular.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  title ?? "",
                  style: FontPalette.font19Bold.copyWith(
                    color: Color(0xffFBFBFB),
                  ),
                ),

                Text(
                  artist ?? "",
                  style: FontPalette.font14Medium.copyWith(
                    color: Color(0xffFBFBFB),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Image.asset(Assets.imagesHomeBillieEilish, height: 168),
        ),
      ],
    );
  }
}
