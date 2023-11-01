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