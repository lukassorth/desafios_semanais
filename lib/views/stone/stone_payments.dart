import 'package:desafios_semanais/views/stone/components/currency_card.dart';
import 'package:flutter/material.dart';

class StonePaymentsView extends StatelessWidget {
  const StonePaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 64.0, left: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // CustomHeader(),
            SizedBox(height: 105),
            CurrencyCard(),
          ],
        ),
      ),
    );
  }
}
