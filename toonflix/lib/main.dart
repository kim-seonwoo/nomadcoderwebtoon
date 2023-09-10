import 'package:flutter/material.dart';
import 'package:toonflix/widgets/buton.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$ 12,000.00',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '4,000',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '4,000',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -60),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '3,200',
                    icon: Icons.money_off_csred_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
