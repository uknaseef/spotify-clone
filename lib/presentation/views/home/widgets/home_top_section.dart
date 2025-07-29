import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../generated/assets.dart';
import 'home_banner_widget.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Stack(
        children: [
          Column(
            children: [
              56.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(Assets.svgSearchIcon),
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.svgVector,
                    width: 118.w,
                    height: 35.h,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(Icons.more_vert, color: Color(0xff7D7D7D)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              70.verticalSpace,
              HomeBannerWidget(
                albumName: "New Album",
                title: "Happier Than\nEver",
                artist: "Billie Eilish",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
