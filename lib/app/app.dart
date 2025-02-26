import 'package:flutter/material.dart';
import 'package:todoapp/core/utilis/app_colors.dart';
import 'package:todoapp/core/utilis/app_strings.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStringsMYR.appName,
      home: Scaffold(
        backgroundColor: AppColorsMYR.backgroundColor,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
