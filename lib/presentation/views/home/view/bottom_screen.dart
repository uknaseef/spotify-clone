import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/theme_constants.dart';
import 'package:spotify_clone/generated/assets.dart';
import 'package:spotify_clone/presentation/views/home/view/home_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final ValueNotifier selectedIndex = ValueNotifier(0);
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("Discover")),
    Center(child: Text("Favorites")),
    Center(child: Text("Profile")),
  ];

  selectIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (_, index, __) {
        return Scaffold(
          body: IndexedStack(index: index, children: screens),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 70,
            child: Row(
              children: [
                BottomNavChip(
                  onTap: () {
                    selectIndex(0);
                  },
                  iconPath: Assets.svgHomeIcon,
                  isSelected: index == 0,
                ),
                BottomNavChip(
                  onTap: () {
                    selectIndex(1);
                  },
                  iconPath: Assets.svgDiscoverIcon,
                  isSelected: index == 1,
                ),
                BottomNavChip(
                  onTap: () {
                    selectIndex(2);
                  },
                  iconPath: Assets.svgFavOutline,
                  isSelected: index == 2,
                ),
                BottomNavChip(
                  onTap: () {
                    selectIndex(3);
                  },
                  iconPath: Assets.svgProfileIcon,
                  isSelected: index == 3,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BottomNavChip extends StatelessWidget {
  final String? iconPath;
  final bool isSelected;
  final Function() onTap;
  const BottomNavChip({
    super.key,
    this.iconPath,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              isSelected
                  ? Container(
                    width: 25.w,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.lightPrimary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r),
                      ),
                    ),
                  )
                  : SizedBox.shrink(),
              Expanded(
                child: Center(
                  child: SvgPicture.asset(
                    iconPath ?? "",
                    colorFilter:isSelected? ColorFilter.mode(
                      AppColors.lightPrimary,
                      BlendMode.srcIn
                    ):null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
