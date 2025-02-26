import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/core/utilis/app_assets.dart';
import 'package:todoapp/core/utilis/app_colors.dart';
import 'package:todoapp/core/utilis/app_strings.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorsMYR.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text(
                  AppStringsMYR.skip,
                  style: GoogleFonts.lato(
                    color: AppColorsMYR.whiteColor,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
              ),
              Image.asset(AppAssets.on1),
            ],
          ),
        ),
      ),
    );
  }
}
