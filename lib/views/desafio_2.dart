// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesafioDois extends StatelessWidget {
  const DesafioDois({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        height: 498,
        width: 875,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.6),
          ),
          color: Color(0xffD9CDF7),
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
