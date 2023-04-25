import 'package:flutter/material.dart';
import 'package:ui_practice_with_flutter/widgets/button.dart';
import 'package:ui_practice_with_flutter/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hello, Leo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],)
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Total Balance',
                  style: TextStyle(color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('\$5 194 482',
                  style: TextStyle(color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: Color(0xFFF1B33B), textColor: Colors.black),
                    Button(text: 'request', bgColor: Color(0xFF1F2123), textColor: Colors.white),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0,-20),
                  child: CurrencyCard(name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0,-40),
                  child: CurrencyCard(name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
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