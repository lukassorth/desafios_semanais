// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:desafios_semanais/views/desafio_1.dart';
import 'package:desafios_semanais/views/desafio_2.dart';
import 'package:desafios_semanais/views/stone/stone_payments.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../views/home/home_page.dart';

final appPages = [
  GetPage(
    name: Routes.HOME,
    page: () => HomePage(),
  ),
  GetPage(
    name: Routes.DESAFIOUM,
    page: () => DesafioUm(),
  ),
  GetPage(
    name: Routes.DESAFIODOIS,
    page: () => DesafioDois(),
  ),
  GetPage(
    name: Routes.STONEPAY,
    page: () => StonePaymentsView(),
  ),
];

class Routes {
  static String HOME = '/home';
  static String DESAFIOUM = '/desafioum';
  static String DESAFIODOIS = '/desafiodois';
  static String STONEPAY = '/stone_payments';
}
