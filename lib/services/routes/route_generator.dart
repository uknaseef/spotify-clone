import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/presentation/views/auth/sign_in_screen.dart';
import 'package:spotify_clone/presentation/views/auth/sign_or_log_screen.dart';
import 'package:spotify_clone/presentation/views/onboarding/choose_mode_screen.dart';
import 'package:spotify_clone/presentation/views/onboarding/get_started_screen.dart';
import 'package:spotify_clone/services/routes/route_constants.dart';
import '../../presentation/components/common_widgets/empty_screen.dart';
import '../../presentation/views/splash/splash_screen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.routeInitial:
        return _buildRoute(RouteConstants.routeInitial, SplashScreen());
      case RouteConstants.routeGetStarted:
        return _buildRoute(RouteConstants.routeGetStarted, GetStartedScreen());
      case RouteConstants.routeChooseMood:
        return _buildRoute(RouteConstants.routeChooseMood, ChooseModeScreen());
      case RouteConstants.routeSignOrLogScreen:
        return _buildRoute(RouteConstants.routeSignOrLogScreen, SignOrLogScreen());
      case RouteConstants.routeSignInScreen:
        return _buildRoute(RouteConstants.routeSignInScreen, SignInScreen());
      default:
        return _buildRoute(RouteConstants.routeInitial, EmptyScreen());
    }
  }
}

Route _buildRoute(
  String route,
  Widget widget, {
  bool enableFullScreen = false,
}) {
  return CupertinoPageRoute(
    fullscreenDialog: enableFullScreen,
    settings: RouteSettings(name: route),
    builder: (_) => widget,
  );
}
