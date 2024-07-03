import 'package:ecommerce_app/feautures/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce_app/utils/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feautures/authentication/screens/login_screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
