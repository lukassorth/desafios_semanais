import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9.6),
              child: SvgPicture.asset(
                'assets/stone/Logo.svg',
              ),
            ),
            const SizedBox(height: 11.2),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Opacity(
                    opacity: 0.32,
                    child: Container(
                      width: 83,
                      height: 4,
                      decoration:
                          const BoxDecoration(color: Color(0xFF00AA62)),
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                const Text(
                  'Currency',
                  style: TextStyle(
                    color: Color(0xFF00AA62),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '14 de janeiro 2021 | 21:00 UTC',
                style: TextStyle(
                  color: Color(0xFF45505E),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Dados de câmbio disponibilizados pela Morningstar.',
                style: TextStyle(
                  color: Color(0xFF8C9CAD),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
