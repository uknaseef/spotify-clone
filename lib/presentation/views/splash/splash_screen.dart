import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/core/theme/theme_constants.dart';
import 'package:spotify_clone/presentation/components/common_widgets/fade_scale_animation.dart';
import 'package:spotify_clone/services/routes/route_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? AppColors.darkSplash : null,
      body: FadeScaleAnimation(
        widget: Center(
          child: SvgPicture.asset(
            "assets/svg/Vector.svg",
            width: 196,
            height: 59,
          ),
        ),
      ),
    );
  }

  _init() {
    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteConstants.routeBottomScreen,
        (route) => false,
      );
    });
  }
}
