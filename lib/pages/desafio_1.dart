// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class DesafioUm extends StatelessWidget {
  const DesafioUm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          height: 631,
          width: 1037,
          color: Color(0xFF0F0D13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.6),
                  ),
                  color: Color(0xff2a2141),
                ),
                width: 266,
                height: 498,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('desafio1.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        height: 189,
                        width: 189,
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(children: [
                        Text(
                          'Acorda Devinho',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 24,
                            color: Color(0xffE1E1E6),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 9.6,
                      ),
                      Row(children: [
                        Text(
                          'Banda Rocketseat',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Color(0xffE1E1E6).withOpacity(0.67),
                          ),
                        ),
                      ]),
                      SizedBox(height: 28),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.fast_rewind_rounded,
                            size: 35,
                            color: Color(0xffE1E1E6),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 35,
                            color: Color(0xffE1E1E6),
                          ),
                          Icon(
                            Icons.fast_forward_rounded,
                            size: 35,
                            color: Color(0xffE1E1E6),
                          ),
                        ],
                      ),
                      SizedBox(height: 28),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            height: 6,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffE1E1E6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            height: 6,
                            width: 165,
                          ),
                        ],
                      ),
                      SizedBox(height: 9.6),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '03:20',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffE1E1E6).withOpacity(0.67),
                            ),
                          ),
                          Text(
                            '00:12',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xffE1E1E6).withOpacity(0.67),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.6),
                      ),
                      color: Color(0xff2a2141),
                    ),
                    width: 357,
                    height: 266,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('desafio1.png'),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                height: 84,
                                width: 84,
                              ),
                              SizedBox(width: 28),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      'Acorda Devinho',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24,
                                        color: Color(0xffE1E1E6),
                                      ),
                                    ),
                                  ]),
                                  SizedBox(
                                    height: 9.6,
                                  ),
                                  Row(children: [
                                    Text(
                                      'Banda Rocketseat',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color:
                                            Color(0xffE1E1E6).withOpacity(0.67),
                                      ),
                                    ),
                                  ]),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 28),
                          SizedBox(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.fast_rewind_rounded,
                                  size: 35,
                                  color: Color(0xffE1E1E6),
                                ),
                                Icon(
                                  Icons.play_arrow_rounded,
                                  size: 35,
                                  color: Color(0xffE1E1E6),
                                ),
                                Icon(
                                  Icons.fast_forward_rounded,
                                  size: 35,
                                  color: Color(0xffE1E1E6),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 28),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                height: 6,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffE1E1E6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                height: 6,
                                width: 261,
                              ),
                            ],
                          ),
                          SizedBox(height: 9.6),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '03:20',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffE1E1E6).withOpacity(0.67),
                                ),
                              ),
                              Text(
                                '00:12',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffE1E1E6).withOpacity(0.67),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.6),
                      ),
                      color: Color(0xff2a2141),
                    ),
                    width: 357,
                    height: 199,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 28.0, left: 28, right: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('desafio1.png'),
                                        fit: BoxFit.cover),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  height: 84,
                                  width: 84,
                                ),
                                SizedBox(width: 28),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Text(
                                        'Acorda Devinho',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 24,
                                          color: Color(0xffE1E1E6),
                                        ),
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 9.6,
                                    ),
                                    Row(children: [
                                      Text(
                                        'Banda Rocketseat',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Color(0xffE1E1E6)
                                              .withOpacity(0.67),
                                        ),
                                      ),
                                    ]),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 29.0),
                              child: SizedBox(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.fast_rewind_rounded,
                                      size: 35,
                                      color: Color(0xffE1E1E6),
                                    ),
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      size: 35,
                                      color: Color(0xffE1E1E6),
                                    ),
                                    Icon(
                                      Icons.fast_forward_rounded,
                                      size: 35,
                                      color: Color(0xffE1E1E6),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
