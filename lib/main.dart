import 'package:flutter/material.dart';
import 'package:todoapp/app/app.dart';
import 'package:todoapp/core/utilis/app_strings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: AppStringsMYR.appName,
    home: Myapp(),
  ));
}
