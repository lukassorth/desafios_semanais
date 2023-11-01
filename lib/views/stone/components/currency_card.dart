import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 268,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Dólar',
                      style: TextStyle(
                        color: Color(0xFF2E3742),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 168,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Taxa do Estado',
                      style: TextStyle(
                        color: Color(0xFF2E3742),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 168,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Tipo de compra',
                      style: TextStyle(
                        color: Color(0xFF2E3742),
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Row(
                      children: [
                        0,
                        1,
                      ]
                          .map(
                            (int index) => SizedBox(
                              width: 180,
                              child: RadioListTile<int>(
                                activeColor: Colors.black,
                                
                                title: Text(
                                  index == 0 ? 'Dinheiro' : 'Cartão',
                                  style: const TextStyle(color: Colors.black),
                                ),
                                value: index,
                                groupValue: 0,
                                onChanged: (int? value) {},
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 149,
            height: 56,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: const Color(0xFF8C9CAD),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF008B57)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              
              children: [
                SvgPicture.asset(
                  'assets/stone/icon_convert.svg',
                  
                ),
                const SizedBox(width: 16),
                const Text(
                  'Converter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Sharon Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
