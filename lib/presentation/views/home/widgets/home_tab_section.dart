import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/theme/font_pallete.dart';

import 'tab_tile_widget.dart';

class HomeTabSection extends StatefulWidget {
  const HomeTabSection({super.key});

  @override
  State<HomeTabSection> createState() => _HomeTabSectionState();
}

class _HomeTabSectionState extends State<HomeTabSection>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          controller: tabController,
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
          labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
          indicatorWeight: 3,
          labelStyle: FontPalette.font20Medium.copyWith(color: Colors.black),
          unselectedLabelStyle: FontPalette.font20Medium.copyWith(
            color: Color(0xffBEBEBE),
          ),
          tabs: [
            Tab(text: "News"),
            Tab(text: "Video"),
            Tab(text: "Artists"),
            Tab(text: "Podcast"),
          ],
        ),
        28.verticalSpace,
        SizedBox(
          height: 250,
          child: TabBarView(
            controller: tabController,
            children: List.generate(
              4,
              (index) => ListView.separated(
                separatorBuilder: (context, index) => 14.horizontalSpace,
                padding: EdgeInsets.symmetric(horizontal: 28),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => TabTileWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
