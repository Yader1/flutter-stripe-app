import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/pago_completo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe Payment',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'pago_completo': (context) => const PagoCompletoPage(),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xff284879),
        scaffoldBackgroundColor: const Color(0xff21232A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff284879),
          foregroundColor: Colors.white
        ),
      ),
    );
  }
}