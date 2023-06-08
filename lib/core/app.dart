import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/manager/route_manager.dart';
import 'package:movie_app/core/manager/theme_manager.dart';

import '../presentation/screens/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => 
     MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.darkTheme,
      darkTheme: ThemeManager.darkTheme,
       onGenerateRoute: RouteManager.onGenerate,
      ),
      child: const SplashScreen(),
    );
  }
}