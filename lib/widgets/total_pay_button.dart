import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  const TotalPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 15
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text('100.00 USD', style: TextStyle(fontSize: 20)),
            ],
          ),
          _BtnPay()
        ],
      )
    );
  }
}

class _BtnPay extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return true
      ? buildBottonTarjeta(context)
      : buildAppleAndGooglePay(context);
  }

  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 150,
      color: Colors.black,
      shape: StadiumBorder(),
      elevation: 0,
      child: Row(
        children: [
          Icon(
            Platform.isAndroid
            ? FontAwesomeIcons.google
            : FontAwesomeIcons.apple, 
            color: Colors.white
          ),
          SizedBox(width: 3),
          const Text('Pay', style: TextStyle(color: Colors.white, fontSize: 22)),
        ],
      ),
      onPressed: (){},
    );
  }

  Widget buildBottonTarjeta(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 170,
      color: Colors.black,
      shape: StadiumBorder(),
      elevation: 0,
      child: Row(
        children: [
          Icon(FontAwesomeIcons.solidCreditCard, color: Colors.white),
          SizedBox(width: 3),
          const Text('Pagar', style: TextStyle(color: Colors.white, fontSize: 22)),
        ],
      ),
      onPressed: (){},
    );
  }
}