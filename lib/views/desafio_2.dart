// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesafioDois extends StatefulWidget {
  const DesafioDois({super.key});

  @override
  State<DesafioDois> createState() => _DesafioDoisState();
}

class _DesafioDoisState extends State<DesafioDois> {
  bool animatedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: SizedBox(
          height: 498,
          width: 875,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.6),
            ),
            color: Color(0xffD9CDF7),
            child: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    !animatedOn
                        ? Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('SofaBoraCodar2.png'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            height: 253,
                            width: 449,
                          )
                        : Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('SofaBoraCodar.gif'),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            height: 253,
                            width: 449,
                          ),
                    !animatedOn
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                animatedOn = !animatedOn;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('360icon.png'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              height: 22,
                              width: 33,
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              setState(() {
                                animatedOn = !animatedOn;
                              });
                            },
                            child: Container(
                              height: 22,
                              width: 33,
                              child: Icon(
                                Icons.close,
                                color: Get.theme.backgroundColor,
                              ),
                            ),
                          ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CÓDIGO: 42404',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontSize: 10,
                          color: Color(0xff271A45),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Sofá Margot II - Rosé',
                        style: TextStyle(
                          fontFamily: 'CrimsonPro',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: Color(0xff271A45),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'R\$ 4.000',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xff271A45),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 32,
                        width: 148,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: Color(0xff271A45),
                              ),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(999)))),
                          ),
                          child: Text(
                            'ADICIONAR À CESTA',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              color: Color(0xff271A45),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
