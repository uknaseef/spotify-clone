import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/home_tab_section.dart';
import '../widgets/home_top_section.dart';
import '../widgets/playlist_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTopSection(),
            31.verticalSpace,
            HomeTabSection(),
            PlaylistSectionWidget(),
          ],
        ),
      ),
    );
  }
}
