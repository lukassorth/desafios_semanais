// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  }
}
