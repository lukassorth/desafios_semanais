// ignore_for_file: prefer_const_constructors

import 'package:desafios_semanais/pages/desafio_1.dart';
import 'package:desafios_semanais/pages/home_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

final appPages = [
  GetPage(
    name: '/home',
    page: () => HomePage(),
  ),
  GetPage(
    name: '/desafioum',
    page: () => DesafioUm(),
  ),
];
