// ignore_for_file: prefer_const_constructors

import 'package:desafios_semanais/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  if (GetPlatform.isWeb) {
    setUrlStrategy(PathUrlStrategy());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lucas Eduardo Orth',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: TextStyle(color: bodyTextColor),
              bodyMedium: TextStyle(color: bodyTextColor),
            ),
      ),
      initialRoute: '/home',
      getPages: appPages,
    );
  }
}
