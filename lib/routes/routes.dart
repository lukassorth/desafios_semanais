// ignore_for_file: prefer_const_constructors

import 'package:desafios_semanais/views/desafio_1.dart';
import 'package:desafios_semanais/views/desafio_2.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../views/home/home_page.dart';

final appPages = [
  GetPage(
    name: '/home',
    page: () => HomePage(),
  ),
  GetPage(
    name: '/desafioum',
    page: () => DesafioUm(),
  ),
  GetPage(
    name: '/desafiodois',
    page: () => DesafioDois(),
  ),
];
