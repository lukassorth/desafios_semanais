// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:desafios_semanais/views/home/components/home_banner.dart';
import 'package:desafios_semanais/views/main/main_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
    ]);
  }
}

/*
Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.canvasColor,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/desafioum');
                },
                child: Text('#boraCodar Um player de Música - Rocketseat'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/desafiodois');
                },
                child: Text('#boraCodar Um card de Produto - Rocketseat'),
              ),
            ),
          ],
        ),
      ),
    );
 */
