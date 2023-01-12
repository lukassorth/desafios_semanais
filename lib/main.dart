import 'package:desafios_semanais/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/home',
      getPages: appPages,
    );
  }
}
