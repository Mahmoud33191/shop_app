import 'package:flutter/material.dart';
import 'package:shop_app/ui/home_screen.dart';
import 'package:shop_app/ui/splashScreen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'di/di.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
          primaryColor: const Color(0xff001f85),
          useMaterial3: true,
        ),
        routes: {
          SplashScreen.routeName: (_) => const SplashScreen(),
          HomeScreen.routName: (_) => const HomeScreen()
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
