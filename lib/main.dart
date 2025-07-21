import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/viewmodels/theme_viewmodel.dart';
import 'package:spotify_clone/services/routes/route_generator.dart';
import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'services/routes/route_constants.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeViewmodel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeViewmodel>(context);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Spotify Clone',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeProvider.themeMode,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: RouteConstants.routeInitial,
      ),
    );
  }
}
