
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/ui/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash .png'))
      ),
    );
  }
}
