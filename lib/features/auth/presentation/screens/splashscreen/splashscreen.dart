import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/core/utilis/app_assets.dart';
import 'package:todoapp/core/utilis/app_colors.dart';
import 'package:todoapp/core/utilis/app_strings.dart';
import 'package:todoapp/features/auth/presentation/screens/onboardingscreens/onboardingscreens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => OnboardingScreens(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorsMYR.backgroundColor,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              AppAssets.logo,
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              AppStringsMYR.appName,
              style: GoogleFonts.lato(
                color: AppColorsMYR.whiteColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Wrong', style: TextStyle(color: Colors.red))
          ]),
        ));
  }
}
