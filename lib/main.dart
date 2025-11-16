import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc/pagar_bloc.dart';
import 'pages/home_page.dart';
import 'pages/pago_completo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PagarBloc()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}