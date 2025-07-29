import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';
import 'home_playlist_tile.dart';

class PlaylistSectionWidget extends StatelessWidget {
  const PlaylistSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        23.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Playlist",
                style: FontPalette.font20Medium.copyWith(letterSpacing: -.4),
              ),
              Text(
                "See more",
                style: FontPalette.font14Small.copyWith(
                  color: Color(0xff131313),
                ),
              ),
            ],
          ),
        ),
        ListView.separated(
          separatorBuilder: (context, index) => 10.verticalSpace,
          padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 23),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => HomePlaylistTile(),
        ),
      ],
    );
  }
}
